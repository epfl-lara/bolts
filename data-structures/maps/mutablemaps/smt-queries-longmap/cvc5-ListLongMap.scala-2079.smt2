; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35650 () Bool)

(assert start!35650)

(declare-fun b_free!7897 () Bool)

(declare-fun b_next!7897 () Bool)

(assert (=> start!35650 (= b_free!7897 (not b_next!7897))))

(declare-fun tp!27674 () Bool)

(declare-fun b_and!15157 () Bool)

(assert (=> start!35650 (= tp!27674 b_and!15157)))

(declare-fun b!357624 () Bool)

(declare-fun e!218943 () Bool)

(declare-fun tp_is_empty!8095 () Bool)

(assert (=> b!357624 (= e!218943 tp_is_empty!8095)))

(declare-fun b!357625 () Bool)

(declare-fun e!218947 () Bool)

(declare-fun e!218948 () Bool)

(assert (=> b!357625 (= e!218947 (not e!218948))))

(declare-fun res!198761 () Bool)

(assert (=> b!357625 (=> res!198761 e!218948)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19723 0))(
  ( (array!19724 (arr!9352 (Array (_ BitVec 32) (_ BitVec 64))) (size!9704 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19723)

(assert (=> b!357625 (= res!198761 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9704 _keys!1456))))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357625 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-datatypes ((V!11771 0))(
  ( (V!11772 (val!4092 Int)) )
))
(declare-fun minValue!1150 () V!11771)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((Unit!11027 0))(
  ( (Unit!11028) )
))
(declare-fun lt!166066 () Unit!11027)

(declare-datatypes ((ValueCell!3704 0))(
  ( (ValueCellFull!3704 (v!6282 V!11771)) (EmptyCell!3704) )
))
(declare-datatypes ((array!19725 0))(
  ( (array!19726 (arr!9353 (Array (_ BitVec 32) ValueCell!3704)) (size!9705 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19725)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11771)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!33 (array!19723 array!19725 (_ BitVec 32) (_ BitVec 32) V!11771 V!11771 (_ BitVec 64) (_ BitVec 32)) Unit!11027)

(assert (=> b!357625 (= lt!166066 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!33 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357626 () Bool)

(declare-fun res!198760 () Bool)

(assert (=> b!357626 (=> (not res!198760) (not e!218947))))

(assert (=> b!357626 (= res!198760 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun res!198758 () Bool)

(assert (=> start!35650 (=> (not res!198758) (not e!218947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35650 (= res!198758 (validMask!0 mask!1842))))

(assert (=> start!35650 e!218947))

(assert (=> start!35650 tp_is_empty!8095))

(assert (=> start!35650 true))

(assert (=> start!35650 tp!27674))

(declare-fun array_inv!6876 (array!19723) Bool)

(assert (=> start!35650 (array_inv!6876 _keys!1456)))

(declare-fun e!218946 () Bool)

(declare-fun array_inv!6877 (array!19725) Bool)

(assert (=> start!35650 (and (array_inv!6877 _values!1208) e!218946)))

(declare-fun b!357627 () Bool)

(declare-fun res!198766 () Bool)

(assert (=> b!357627 (=> (not res!198766) (not e!218947))))

(assert (=> b!357627 (= res!198766 (and (= (size!9705 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9704 _keys!1456) (size!9705 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357628 () Bool)

(declare-fun e!218944 () Bool)

(declare-fun mapRes!13650 () Bool)

(assert (=> b!357628 (= e!218946 (and e!218944 mapRes!13650))))

(declare-fun condMapEmpty!13650 () Bool)

(declare-fun mapDefault!13650 () ValueCell!3704)

