; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35444 () Bool)

(assert start!35444)

(declare-fun b_free!7823 () Bool)

(declare-fun b_next!7823 () Bool)

(assert (=> start!35444 (= b_free!7823 (not b_next!7823))))

(declare-fun tp!27254 () Bool)

(declare-fun b_and!15083 () Bool)

(assert (=> start!35444 (= tp!27254 b_and!15083)))

(declare-fun b!354609 () Bool)

(declare-fun res!196677 () Bool)

(declare-fun e!217355 () Bool)

(assert (=> b!354609 (=> (not res!196677) (not e!217355))))

(declare-datatypes ((array!19325 0))(
  ( (array!19326 (arr!9153 (Array (_ BitVec 32) (_ BitVec 64))) (size!9505 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19325)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19325 (_ BitVec 32)) Bool)

(assert (=> b!354609 (= res!196677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354610 () Bool)

(assert (=> b!354610 (= e!217355 (not true))))

(declare-datatypes ((V!11495 0))(
  ( (V!11496 (val!3989 Int)) )
))
(declare-fun minValue!1150 () V!11495)

(declare-fun defaultEntry!1216 () Int)

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((ValueCell!3601 0))(
  ( (ValueCellFull!3601 (v!6179 V!11495)) (EmptyCell!3601) )
))
(declare-datatypes ((array!19327 0))(
  ( (array!19328 (arr!9154 (Array (_ BitVec 32) ValueCell!3601)) (size!9506 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19327)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11495)

(declare-datatypes ((tuple2!5664 0))(
  ( (tuple2!5665 (_1!2842 (_ BitVec 64)) (_2!2842 V!11495)) )
))
(declare-datatypes ((List!5329 0))(
  ( (Nil!5326) (Cons!5325 (h!6181 tuple2!5664) (t!10487 List!5329)) )
))
(declare-datatypes ((ListLongMap!4591 0))(
  ( (ListLongMap!4592 (toList!2311 List!5329)) )
))
(declare-fun contains!2387 (ListLongMap!4591 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1828 (array!19325 array!19327 (_ BitVec 32) (_ BitVec 32) V!11495 V!11495 (_ BitVec 32) Int) ListLongMap!4591)

(assert (=> b!354610 (contains!2387 (getCurrentListMap!1828 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) (select (arr!9153 _keys!1456) from!1805))))

(declare-datatypes ((Unit!10931 0))(
  ( (Unit!10932) )
))
(declare-fun lt!165709 () Unit!10931)

(declare-fun lemmaValidKeyInArrayIsInListMap!178 (array!19325 array!19327 (_ BitVec 32) (_ BitVec 32) V!11495 V!11495 (_ BitVec 32) Int) Unit!10931)

(assert (=> b!354610 (= lt!165709 (lemmaValidKeyInArrayIsInListMap!178 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 from!1805 defaultEntry!1216))))

(declare-fun b!354611 () Bool)

(declare-fun res!196670 () Bool)

(assert (=> b!354611 (=> (not res!196670) (not e!217355))))

(assert (=> b!354611 (= res!196670 (and (= (size!9506 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9505 _keys!1456) (size!9506 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354612 () Bool)

(declare-fun res!196675 () Bool)

(assert (=> b!354612 (=> (not res!196675) (not e!217355))))

(declare-datatypes ((List!5330 0))(
  ( (Nil!5327) (Cons!5326 (h!6182 (_ BitVec 64)) (t!10488 List!5330)) )
))
(declare-fun arrayNoDuplicates!0 (array!19325 (_ BitVec 32) List!5330) Bool)

(assert (=> b!354612 (= res!196675 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5327))))

(declare-fun mapNonEmpty!13341 () Bool)

(declare-fun mapRes!13341 () Bool)

(declare-fun tp!27255 () Bool)

(declare-fun e!217353 () Bool)

(assert (=> mapNonEmpty!13341 (= mapRes!13341 (and tp!27255 e!217353))))

(declare-fun mapRest!13341 () (Array (_ BitVec 32) ValueCell!3601))

(declare-fun mapValue!13341 () ValueCell!3601)

(declare-fun mapKey!13341 () (_ BitVec 32))

(assert (=> mapNonEmpty!13341 (= (arr!9154 _values!1208) (store mapRest!13341 mapKey!13341 mapValue!13341))))

(declare-fun b!354613 () Bool)

(declare-fun e!217351 () Bool)

(declare-fun tp_is_empty!7889 () Bool)

(assert (=> b!354613 (= e!217351 tp_is_empty!7889)))

(declare-fun b!354614 () Bool)

(declare-fun res!196673 () Bool)

(assert (=> b!354614 (=> (not res!196673) (not e!217355))))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!354614 (= res!196673 (= (select (arr!9153 _keys!1456) from!1805) k!1077))))

(declare-fun b!354615 () Bool)

(declare-fun res!196678 () Bool)

(assert (=> b!354615 (=> (not res!196678) (not e!217355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!354615 (= res!196678 (validKeyInArray!0 (select (arr!9153 _keys!1456) from!1805)))))

(declare-fun b!354616 () Bool)

(declare-fun res!196676 () Bool)

(assert (=> b!354616 (=> (not res!196676) (not e!217355))))

(declare-fun arrayContainsKey!0 (array!19325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!354616 (= res!196676 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!354617 () Bool)

(declare-fun res!196671 () Bool)

(assert (=> b!354617 (=> (not res!196671) (not e!217355))))

(assert (=> b!354617 (= res!196671 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9505 _keys!1456))))))

(declare-fun res!196674 () Bool)

(assert (=> start!35444 (=> (not res!196674) (not e!217355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35444 (= res!196674 (validMask!0 mask!1842))))

(assert (=> start!35444 e!217355))

(assert (=> start!35444 tp_is_empty!7889))

(assert (=> start!35444 true))

(assert (=> start!35444 tp!27254))

(declare-fun array_inv!6738 (array!19325) Bool)

(assert (=> start!35444 (array_inv!6738 _keys!1456)))

(declare-fun e!217352 () Bool)

(declare-fun array_inv!6739 (array!19327) Bool)

(assert (=> start!35444 (and (array_inv!6739 _values!1208) e!217352)))

(declare-fun b!354618 () Bool)

(assert (=> b!354618 (= e!217352 (and e!217351 mapRes!13341))))

(declare-fun condMapEmpty!13341 () Bool)

(declare-fun mapDefault!13341 () ValueCell!3601)

