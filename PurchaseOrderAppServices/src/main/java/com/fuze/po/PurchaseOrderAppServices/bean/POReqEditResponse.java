//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2020.02.28 at 11:16:20 AM IST 
//


package com.fuze.po.PurchaseOrderAppServices.bean;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="poreqeditpojo" type="{http://www.poreqeditproducer.com/poreqedit}poreqeditpojo"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "poreqeditpojo"
})
@XmlRootElement(name = "POReqEditResponse", namespace = "http://www.poreqeditproducer.com/poreqedit")
public class POReqEditResponse {

    @XmlElement(namespace = "http://www.poreqeditproducer.com/poreqedit", required = true)
    protected Poreqeditpojo poreqeditpojo;

    /**
     * Gets the value of the poreqeditpojo property.
     * 
     * @return
     *     possible object is
     *     {@link Poreqeditpojo }
     *     
     */
    public Poreqeditpojo getPoreqeditpojo() {
        return poreqeditpojo;
    }

    /**
     * Sets the value of the poreqeditpojo property.
     * 
     * @param value
     *     allowed object is
     *     {@link Poreqeditpojo }
     *     
     */
    public void setPoreqeditpojo(Poreqeditpojo value) {
        this.poreqeditpojo = value;
    }

}
