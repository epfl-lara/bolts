; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83098 () Bool)

(assert start!83098)

(declare-fun b!968924 () Bool)

(declare-fun e!546219 () Bool)

(declare-fun tp_is_empty!21961 () Bool)

(assert (=> b!968924 (= e!546219 tp_is_empty!21961)))

(declare-fun mapNonEmpty!34951 () Bool)

(declare-fun mapRes!34951 () Bool)

(declare-fun tp!66520 () Bool)

(assert (=> mapNonEmpty!34951 (= mapRes!34951 (and tp!66520 e!546219))))

(declare-datatypes ((V!34265 0))(
  ( (V!34266 (val!11031 Int)) )
))
(declare-datatypes ((ValueCell!10499 0))(
  ( (ValueCellFull!10499 (v!13590 V!34265)) (EmptyCell!10499) )
))
(declare-datatypes ((array!59971 0))(
  ( (array!59972 (arr!28845 (Array (_ BitVec 32) ValueCell!10499)) (size!29325 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59971)

(declare-fun mapRest!34951 () (Array (_ BitVec 32) ValueCell!10499))

(declare-fun mapValue!34951 () ValueCell!10499)

(declare-fun mapKey!34951 () (_ BitVec 32))

(assert (=> mapNonEmpty!34951 (= (arr!28845 _values!1425) (store mapRest!34951 mapKey!34951 mapValue!34951))))

(declare-fun mapIsEmpty!34951 () Bool)

(assert (=> mapIsEmpty!34951 mapRes!34951))

(declare-fun b!968925 () Bool)

(declare-fun e!546222 () Bool)

(assert (=> b!968925 (= e!546222 tp_is_empty!21961)))

(declare-fun b!968926 () Bool)

(declare-fun res!648671 () Bool)

(declare-fun e!546218 () Bool)

(assert (=> b!968926 (=> (not res!648671) (not e!546218))))

(declare-datatypes ((array!59973 0))(
  ( (array!59974 (arr!28846 (Array (_ BitVec 32) (_ BitVec 64))) (size!29326 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!59973)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59973 (_ BitVec 32)) Bool)

(assert (=> b!968926 (= res!648671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!648672 () Bool)

(assert (=> start!83098 (=> (not res!648672) (not e!546218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83098 (= res!648672 (validMask!0 mask!2147))))

(assert (=> start!83098 e!546218))

(assert (=> start!83098 true))

(declare-fun e!546221 () Bool)

(declare-fun array_inv!22225 (array!59971) Bool)

(assert (=> start!83098 (and (array_inv!22225 _values!1425) e!546221)))

(declare-fun array_inv!22226 (array!59973) Bool)

(assert (=> start!83098 (array_inv!22226 _keys!1717)))

(declare-fun b!968927 () Bool)

(declare-fun res!648673 () Bool)

(assert (=> b!968927 (=> (not res!648673) (not e!546218))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!968927 (= res!648673 (and (= (size!29325 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29326 _keys!1717) (size!29325 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!968928 () Bool)

(assert (=> b!968928 (= e!546221 (and e!546222 mapRes!34951))))

(declare-fun condMapEmpty!34951 () Bool)

(declare-fun mapDefault!34951 () ValueCell!10499)

