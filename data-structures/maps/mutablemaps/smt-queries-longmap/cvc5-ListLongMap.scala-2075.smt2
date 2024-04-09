; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35626 () Bool)

(assert start!35626)

(declare-fun b_free!7873 () Bool)

(declare-fun b_next!7873 () Bool)

(assert (=> start!35626 (= b_free!7873 (not b_next!7873))))

(declare-fun tp!27603 () Bool)

(declare-fun b_and!15133 () Bool)

(assert (=> start!35626 (= tp!27603 b_and!15133)))

(declare-fun mapNonEmpty!13614 () Bool)

(declare-fun mapRes!13614 () Bool)

(declare-fun tp!27602 () Bool)

(declare-fun e!218731 () Bool)

(assert (=> mapNonEmpty!13614 (= mapRes!13614 (and tp!27602 e!218731))))

(declare-datatypes ((V!11739 0))(
  ( (V!11740 (val!4080 Int)) )
))
(declare-datatypes ((ValueCell!3692 0))(
  ( (ValueCellFull!3692 (v!6270 V!11739)) (EmptyCell!3692) )
))
(declare-fun mapRest!13614 () (Array (_ BitVec 32) ValueCell!3692))

(declare-fun mapKey!13614 () (_ BitVec 32))

(declare-datatypes ((array!19677 0))(
  ( (array!19678 (arr!9329 (Array (_ BitVec 32) ValueCell!3692)) (size!9681 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19677)

(declare-fun mapValue!13614 () ValueCell!3692)

(assert (=> mapNonEmpty!13614 (= (arr!9329 _values!1208) (store mapRest!13614 mapKey!13614 mapValue!13614))))

(declare-fun res!198442 () Bool)

(declare-fun e!218729 () Bool)

(assert (=> start!35626 (=> (not res!198442) (not e!218729))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35626 (= res!198442 (validMask!0 mask!1842))))

(assert (=> start!35626 e!218729))

(declare-fun tp_is_empty!8071 () Bool)

(assert (=> start!35626 tp_is_empty!8071))

(assert (=> start!35626 true))

(assert (=> start!35626 tp!27603))

(declare-datatypes ((array!19679 0))(
  ( (array!19680 (arr!9330 (Array (_ BitVec 32) (_ BitVec 64))) (size!9682 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19679)

(declare-fun array_inv!6864 (array!19679) Bool)

(assert (=> start!35626 (array_inv!6864 _keys!1456)))

(declare-fun e!218728 () Bool)

(declare-fun array_inv!6865 (array!19677) Bool)

(assert (=> start!35626 (and (array_inv!6865 _values!1208) e!218728)))

(declare-fun b!357192 () Bool)

(declare-fun res!198434 () Bool)

(assert (=> b!357192 (=> (not res!198434) (not e!218729))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357192 (= res!198434 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357193 () Bool)

(declare-fun e!218732 () Bool)

(assert (=> b!357193 (= e!218729 (not e!218732))))

(declare-fun res!198435 () Bool)

(assert (=> b!357193 (=> res!198435 e!218732)))

(assert (=> b!357193 (= res!198435 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9682 _keys!1456))))))

(assert (=> b!357193 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11739)

(declare-datatypes ((Unit!11009 0))(
  ( (Unit!11010) )
))
(declare-fun lt!165994 () Unit!11009)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11739)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!25 (array!19679 array!19677 (_ BitVec 32) (_ BitVec 32) V!11739 V!11739 (_ BitVec 64) (_ BitVec 32)) Unit!11009)

(assert (=> b!357193 (= lt!165994 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!25 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357194 () Bool)

(declare-fun e!218727 () Bool)

(assert (=> b!357194 (= e!218728 (and e!218727 mapRes!13614))))

(declare-fun condMapEmpty!13614 () Bool)

(declare-fun mapDefault!13614 () ValueCell!3692)

