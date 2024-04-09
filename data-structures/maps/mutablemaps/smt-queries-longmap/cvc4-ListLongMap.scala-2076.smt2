; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35636 () Bool)

(assert start!35636)

(declare-fun b_free!7883 () Bool)

(declare-fun b_next!7883 () Bool)

(assert (=> start!35636 (= b_free!7883 (not b_next!7883))))

(declare-fun tp!27633 () Bool)

(declare-fun b_and!15143 () Bool)

(assert (=> start!35636 (= tp!27633 b_and!15143)))

(declare-fun b!357372 () Bool)

(declare-fun e!218821 () Bool)

(declare-fun e!218818 () Bool)

(assert (=> b!357372 (= e!218821 (not e!218818))))

(declare-fun res!198572 () Bool)

(assert (=> b!357372 (=> res!198572 e!218818)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19697 0))(
  ( (array!19698 (arr!9339 (Array (_ BitVec 32) (_ BitVec 64))) (size!9691 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19697)

(assert (=> b!357372 (= res!198572 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9691 _keys!1456))))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357372 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11751 0))(
  ( (V!11752 (val!4085 Int)) )
))
(declare-datatypes ((ValueCell!3697 0))(
  ( (ValueCellFull!3697 (v!6275 V!11751)) (EmptyCell!3697) )
))
(declare-datatypes ((array!19699 0))(
  ( (array!19700 (arr!9340 (Array (_ BitVec 32) ValueCell!3697)) (size!9692 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19699)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11751)

(declare-fun minValue!1150 () V!11751)

(declare-datatypes ((Unit!11017 0))(
  ( (Unit!11018) )
))
(declare-fun lt!166024 () Unit!11017)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!28 (array!19697 array!19699 (_ BitVec 32) (_ BitVec 32) V!11751 V!11751 (_ BitVec 64) (_ BitVec 32)) Unit!11017)

(assert (=> b!357372 (= lt!166024 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!28 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun mapNonEmpty!13629 () Bool)

(declare-fun mapRes!13629 () Bool)

(declare-fun tp!27632 () Bool)

(declare-fun e!218819 () Bool)

(assert (=> mapNonEmpty!13629 (= mapRes!13629 (and tp!27632 e!218819))))

(declare-fun mapRest!13629 () (Array (_ BitVec 32) ValueCell!3697))

(declare-fun mapKey!13629 () (_ BitVec 32))

(declare-fun mapValue!13629 () ValueCell!3697)

(assert (=> mapNonEmpty!13629 (= (arr!9340 _values!1208) (store mapRest!13629 mapKey!13629 mapValue!13629))))

(declare-fun b!357373 () Bool)

(declare-fun res!198570 () Bool)

(assert (=> b!357373 (=> (not res!198570) (not e!218821))))

(assert (=> b!357373 (= res!198570 (and (= (size!9692 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9691 _keys!1456) (size!9692 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!357374 () Bool)

(declare-fun tp_is_empty!8081 () Bool)

(assert (=> b!357374 (= e!218819 tp_is_empty!8081)))

(declare-fun b!357375 () Bool)

(declare-fun e!218820 () Bool)

(assert (=> b!357375 (= e!218820 tp_is_empty!8081)))

(declare-fun b!357376 () Bool)

(declare-fun res!198573 () Bool)

(assert (=> b!357376 (=> (not res!198573) (not e!218821))))

(assert (=> b!357376 (= res!198573 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun mapIsEmpty!13629 () Bool)

(assert (=> mapIsEmpty!13629 mapRes!13629))

(declare-fun b!357377 () Bool)

(declare-fun res!198574 () Bool)

(assert (=> b!357377 (=> (not res!198574) (not e!218821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19697 (_ BitVec 32)) Bool)

(assert (=> b!357377 (= res!198574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!357378 () Bool)

(declare-fun e!218817 () Bool)

(assert (=> b!357378 (= e!218817 (and e!218820 mapRes!13629))))

(declare-fun condMapEmpty!13629 () Bool)

(declare-fun mapDefault!13629 () ValueCell!3697)

