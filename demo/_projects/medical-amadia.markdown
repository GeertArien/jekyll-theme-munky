---
layout: post
title:  "Medical Amadia"
tags: ERP Odoo Python Linux
sidebar: true
text: true
description:  Quis ornare diam erat maecenas, necessitatibus tempus qui duis
              wisi donec nisl.
repo: medical-amadia
image: /assets/images/projects/medical-amadia.jpg
---
Id et, montes nisl eu maecenas orci, ipsum neque amet accumsan elit leo ante,
cras lobortis a in ac eu nec, nunc duis [consectetuer][odoo] vestibulum orci
eros. Ultricies metus curabitur, nunc id orci accumsan, ut et ut, imperdiet
ultricies netus rhoncus mi, mi a scelerisque pede. Amet semper suspendisse,
pharetra pellentesque sit porttitor, iaculis aliquam. Quis metus libero mi diam
rhoncus donec.

<figure>
<img src="/assets/images/projects/medical-amadia/amadia-view.jpg" />
<figcaption>Elit amet, leo interdum, leo tortor quam eget in sapien. Iste in gravida natoque.</figcaption>
</figure>

Malesuada sollicitudin aliquam placerat integer, sodales sit lacus ipsa nec
auctor, erat commodo duis etiam [luctus ligula][amadia]. Tincidunt dignissim
condimentum, eu rhoncus, et pretium a phasellus enim placerat nec, pulvinar at.
Pellentesque maecenas, arcu nonummy orci blandit sed enim.

Vulputate iaculis at, semper dignissim feugiat, quis sed netus nibh, ac vitae
interdum a elementum [malesuada][odoo-medical] tincidunt, aut et aliquam est
quam. At magna nulla nunc class est, ultrices egestas velit pede eu maecenas,
egestas eu ornare tellus diam et. Diam mollis pede in purus, nec
[vehicula][postgresql] pretium mauris.

<figure>
<img src="/assets/images/projects/medical-amadia/odoo-modules.jpg" />
<figcaption>Lorem sit, justo viverra vulputate neque amet arcu ante, ac suspendisse ipsum.</figcaption>
</figure>

Orci dictum accumsan mi, euismod sagittis, sed ipsum non sed porta, dolor urna
odio ut, a ante condimentum ornare erat. Lacus habitasse, porttitor non aenean,
eros placerat pulvinar lorem, volutpat feugiat ad et, a quis risus. Volutpat
condimentum, consectetuer arcu elementum congue, sit ut nunc mauris venenatis
facilisis non.

Eu pede ut lacinia dignissim vel, quis [euismod][oca] justo nascetur, leo odio,
pretium a dignissim ac est.

{% highlight python %}
from openerp import models, fields

class MedicalPatientAllergy(models.Model):
    _name = 'medical.patient.allergy'
    _description = 'Medical Patient Allergy'

    name = fields.Char(required=True,
       translate=True, )
{% endhighlight %}

Mauris ultrices convallis consectetuer, volutpat lectus:

{% highlight xml %}
<record id="medical_prescription_tree_view"
  model="ir.ui.view">
    <field name="name">
      medical.prescription.tree
    </field>
    <field name="model">
      medical.prescription
    </field>
    <field name="arch" type="xml">
        <tree string="Medical Prescription">
        	<field name="id"/>
            <field name="medical_patient_id" />
            <field name="date" />
            <field name="prescription_ids"/>
        </tree>
    </field>
</record>
{% endhighlight %}

Nec ac sed sociis, at dui vel, nibh etiam urna [vivamus][python] metus erat.
Faucibus sem, praesent dolorem mauris urna, bibendum dolor, vivamus et sed eu
diam. Rhoncus placerat consectetuer erat orci, metus hendrerit lorem lacus
tortor, erat ut nulla, nulla et et. Quam cras tincidunt, nisl tempor turpis
quam, nulla duis scelerisque eget, pede lectus ultrices faucibus in leo, viverra
tortor. Vivamus rhoncus lectus et, metus et eu nunc non nunc, non sem nunc
[tellus][xml].

Taciti maecenas magna, mi a praesent, etiam sagittis dolor vitae:
* Prescriptions
* Observations
* Medical services
* Hospitalizations
* Automated stock management

<figure>
<img src="/assets/images/projects/medical-amadia/odoo-hospitalization.jpg" />
<figcaption>Posuere amet a mattis, non nascetur justo tempor.</figcaption>
</figure>

Consectetuer sagittis ipsum, [felis][debian] per urna, luctus amet quisque ac
cras velit mattis. Tempor neque semper, dictum sapien nec at elementum arcu, vel
morbi sagittis leo, ut et habitasse dui accumsan ad dapibus. Vel ultrices vel,
ut dolor ut, nulla sollicitudin elementum posuere cursus etiam. Pede dictum
donec mi porta. [Libero][nginx] duis nibh id suscipit, libero nunc sit quis sed
mauris vestibulum, leo arcu tortor id cras vivamus donec, nascetur molestie
nulla tellus hac, curabitur duis eu magna sapien iaculis et. Elit ante est et
dapibus scelerisque risus. Sed in scelerisque nulla volutpat porttitor.

Felis nec amet sit quam, integer consequat ornare diam arcu eget elit, gravida
vitae elit. Vehicula rutrum [sollicitudin][medical-amadia] venenatis ac ac est,
vulputate per wisi massa rhoncus nihil, vestibulum facilisi nulla nullam in et,
mollis sodales. Phasellus quis quam, vivamus suspendisse aliquam.



[odoo]: https://www.odoo.com/
[amadia]: http://www.idf.org/membership/afr/madagascar/association-malgache-contre-le-diabete
[odoo-medical]: https://github.com/OCA/vertical-medical
[postgresql]: https://www.postgresql.org/
[oca]: http://odoo-community.org/
[python]: https://www.python.org/
[xml]: https://www.w3schools.com/xml/
[debian]: https://www.debian.org/
[nginx]: https://www.nginx.com/
[medical-amadia]: https://github.com/GeertArien/medical-amadia
