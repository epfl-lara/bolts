; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82088 () Bool)

(assert start!82088)

(declare-fun mapIsEmpty!33589 () Bool)

(declare-fun mapRes!33589 () Bool)

(assert (=> mapIsEmpty!33589 mapRes!33589))

(declare-fun mapNonEmpty!33589 () Bool)

(declare-fun tp!64195 () Bool)

(declare-fun e!539253 () Bool)

(assert (=> mapNonEmpty!33589 (= mapRes!33589 (and tp!64195 e!539253))))

(declare-fun mapKey!33589 () (_ BitVec 32))

(declare-datatypes ((V!33093 0))(
  ( (V!33094 (val!10592 Int)) )
))
(declare-datatypes ((ValueCell!10060 0))(
  ( (ValueCellFull!10060 (v!13148 V!33093)) (EmptyCell!10060) )
))
(declare-datatypes ((array!58285 0))(
  ( (array!58286 (arr!28017 (Array (_ BitVec 32) ValueCell!10060)) (size!28497 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58285)

(declare-fun mapValue!33589 () ValueCell!10060)

(declare-fun mapRest!33589 () (Array (_ BitVec 32) ValueCell!10060))

(assert (=> mapNonEmpty!33589 (= (arr!28017 _values!1386) (store mapRest!33589 mapKey!33589 mapValue!33589))))

(declare-fun b!956803 () Bool)

(declare-fun e!539250 () Bool)

(declare-fun tp_is_empty!21083 () Bool)

(assert (=> b!956803 (= e!539250 tp_is_empty!21083)))

(declare-fun res!640693 () Bool)

(declare-fun e!539251 () Bool)

(assert (=> start!82088 (=> (not res!640693) (not e!539251))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82088 (= res!640693 (validMask!0 mask!2088))))

(assert (=> start!82088 e!539251))

(assert (=> start!82088 true))

(declare-fun e!539249 () Bool)

(declare-fun array_inv!21681 (array!58285) Bool)

(assert (=> start!82088 (and (array_inv!21681 _values!1386) e!539249)))

(declare-datatypes ((array!58287 0))(
  ( (array!58288 (arr!28018 (Array (_ BitVec 32) (_ BitVec 64))) (size!28498 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58287)

(declare-fun array_inv!21682 (array!58287) Bool)

(assert (=> start!82088 (array_inv!21682 _keys!1668)))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun b!956804 () Bool)

(assert (=> b!956804 (= e!539251 (and (= (size!28497 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28498 _keys!1668) (size!28497 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011) (= (size!28498 _keys!1668) (bvadd #b00000000000000000000000000000001 mask!2088)) (bvsgt #b00000000000000000000000000000000 (size!28498 _keys!1668))))))

(declare-fun b!956805 () Bool)

(assert (=> b!956805 (= e!539253 tp_is_empty!21083)))

(declare-fun b!956806 () Bool)

(assert (=> b!956806 (= e!539249 (and e!539250 mapRes!33589))))

(declare-fun condMapEmpty!33589 () Bool)

(declare-fun mapDefault!33589 () ValueCell!10060)

