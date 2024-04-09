; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35662 () Bool)

(assert start!35662)

(declare-fun b_free!7909 () Bool)

(declare-fun b_next!7909 () Bool)

(assert (=> start!35662 (= b_free!7909 (not b_next!7909))))

(declare-fun tp!27710 () Bool)

(declare-fun b_and!15169 () Bool)

(assert (=> start!35662 (= tp!27710 b_and!15169)))

(declare-fun b!357840 () Bool)

(declare-fun res!198927 () Bool)

(declare-fun e!219051 () Bool)

(assert (=> b!357840 (=> (not res!198927) (not e!219051))))

(declare-datatypes ((array!19747 0))(
  ( (array!19748 (arr!9364 (Array (_ BitVec 32) (_ BitVec 64))) (size!9716 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19747)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!19747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357840 (= res!198927 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357841 () Bool)

(declare-fun e!219052 () Bool)

(assert (=> b!357841 (= e!219052 true)))

(declare-datatypes ((V!11787 0))(
  ( (V!11788 (val!4098 Int)) )
))
(declare-fun minValue!1150 () V!11787)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-datatypes ((ValueCell!3710 0))(
  ( (ValueCellFull!3710 (v!6288 V!11787)) (EmptyCell!3710) )
))
(declare-datatypes ((array!19749 0))(
  ( (array!19750 (arr!9365 (Array (_ BitVec 32) ValueCell!3710)) (size!9717 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19749)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11787)

(declare-datatypes ((tuple2!5722 0))(
  ( (tuple2!5723 (_1!2871 (_ BitVec 64)) (_2!2871 V!11787)) )
))
(declare-datatypes ((List!5436 0))(
  ( (Nil!5433) (Cons!5432 (h!6288 tuple2!5722) (t!10594 List!5436)) )
))
(declare-datatypes ((ListLongMap!4649 0))(
  ( (ListLongMap!4650 (toList!2340 List!5436)) )
))
(declare-fun contains!2416 (ListLongMap!4649 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1857 (array!19747 array!19749 (_ BitVec 32) (_ BitVec 32) V!11787 V!11787 (_ BitVec 32) Int) ListLongMap!4649)

(assert (=> b!357841 (contains!2416 (getCurrentListMap!1857 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-datatypes ((Unit!11039 0))(
  ( (Unit!11040) )
))
(declare-fun lt!166102 () Unit!11039)

(declare-fun lemmaArrayContainsKeyThenInListMap!350 (array!19747 array!19749 (_ BitVec 32) (_ BitVec 32) V!11787 V!11787 (_ BitVec 64) (_ BitVec 32) Int) Unit!11039)

(assert (=> b!357841 (= lt!166102 (lemmaArrayContainsKeyThenInListMap!350 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357842 () Bool)

(declare-fun res!198921 () Bool)

(assert (=> b!357842 (=> (not res!198921) (not e!219051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19747 (_ BitVec 32)) Bool)

(assert (=> b!357842 (= res!198921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13668 () Bool)

(declare-fun mapRes!13668 () Bool)

(assert (=> mapIsEmpty!13668 mapRes!13668))

(declare-fun res!198920 () Bool)

(assert (=> start!35662 (=> (not res!198920) (not e!219051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35662 (= res!198920 (validMask!0 mask!1842))))

(assert (=> start!35662 e!219051))

(declare-fun tp_is_empty!8107 () Bool)

(assert (=> start!35662 tp_is_empty!8107))

(assert (=> start!35662 true))

(assert (=> start!35662 tp!27710))

(declare-fun array_inv!6882 (array!19747) Bool)

(assert (=> start!35662 (array_inv!6882 _keys!1456)))

(declare-fun e!219054 () Bool)

(declare-fun array_inv!6883 (array!19749) Bool)

(assert (=> start!35662 (and (array_inv!6883 _values!1208) e!219054)))

(declare-fun b!357843 () Bool)

(declare-fun res!198925 () Bool)

(assert (=> b!357843 (=> (not res!198925) (not e!219051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357843 (= res!198925 (validKeyInArray!0 k!1077))))

(declare-fun b!357844 () Bool)

(declare-fun res!198923 () Bool)

(assert (=> b!357844 (=> (not res!198923) (not e!219051))))

(assert (=> b!357844 (= res!198923 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9716 _keys!1456))))))

(declare-fun b!357845 () Bool)

(declare-fun e!219053 () Bool)

(assert (=> b!357845 (= e!219053 tp_is_empty!8107)))

(declare-fun b!357846 () Bool)

(declare-fun e!219056 () Bool)

(assert (=> b!357846 (= e!219054 (and e!219056 mapRes!13668))))

(declare-fun condMapEmpty!13668 () Bool)

(declare-fun mapDefault!13668 () ValueCell!3710)

