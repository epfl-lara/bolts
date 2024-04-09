; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97280 () Bool)

(assert start!97280)

(declare-fun b!1106722 () Bool)

(declare-fun res!738687 () Bool)

(declare-fun e!631542 () Bool)

(assert (=> b!1106722 (=> (not res!738687) (not e!631542))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1106722 (= res!738687 (validMask!0 mask!1564))))

(declare-fun b!1106723 () Bool)

(declare-fun e!631547 () Bool)

(assert (=> b!1106723 (= e!631547 (not true))))

(declare-datatypes ((array!71820 0))(
  ( (array!71821 (arr!34559 (Array (_ BitVec 32) (_ BitVec 64))) (size!35096 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71820)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!71820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1106723 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!36259 0))(
  ( (Unit!36260) )
))
(declare-fun lt!495489 () Unit!36259)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71820 (_ BitVec 64) (_ BitVec 32)) Unit!36259)

(assert (=> b!1106723 (= lt!495489 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!738684 () Bool)

(assert (=> start!97280 (=> (not res!738684) (not e!631542))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97280 (= res!738684 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35096 _keys!1208))))))

(assert (=> start!97280 e!631542))

(declare-fun array_inv!26460 (array!71820) Bool)

(assert (=> start!97280 (array_inv!26460 _keys!1208)))

(assert (=> start!97280 true))

(declare-datatypes ((V!41761 0))(
  ( (V!41762 (val!13794 Int)) )
))
(declare-datatypes ((ValueCell!13028 0))(
  ( (ValueCellFull!13028 (v!16428 V!41761)) (EmptyCell!13028) )
))
(declare-datatypes ((array!71822 0))(
  ( (array!71823 (arr!34560 (Array (_ BitVec 32) ValueCell!13028)) (size!35097 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71822)

(declare-fun e!631545 () Bool)

(declare-fun array_inv!26461 (array!71822) Bool)

(assert (=> start!97280 (and (array_inv!26461 _values!996) e!631545)))

(declare-fun b!1106724 () Bool)

(declare-fun res!738679 () Bool)

(assert (=> b!1106724 (=> (not res!738679) (not e!631542))))

(assert (=> b!1106724 (= res!738679 (= (select (arr!34559 _keys!1208) i!673) k!934))))

(declare-fun b!1106725 () Bool)

(declare-fun res!738685 () Bool)

(assert (=> b!1106725 (=> (not res!738685) (not e!631542))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1106725 (= res!738685 (and (= (size!35097 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35096 _keys!1208) (size!35097 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1106726 () Bool)

(declare-fun res!738683 () Bool)

(assert (=> b!1106726 (=> (not res!738683) (not e!631542))))

(assert (=> b!1106726 (= res!738683 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35096 _keys!1208))))))

(declare-fun b!1106727 () Bool)

(declare-fun e!631546 () Bool)

(declare-fun tp_is_empty!27475 () Bool)

(assert (=> b!1106727 (= e!631546 tp_is_empty!27475)))

(declare-fun mapIsEmpty!43030 () Bool)

(declare-fun mapRes!43030 () Bool)

(assert (=> mapIsEmpty!43030 mapRes!43030))

(declare-fun b!1106728 () Bool)

(declare-fun res!738680 () Bool)

(assert (=> b!1106728 (=> (not res!738680) (not e!631542))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71820 (_ BitVec 32)) Bool)

(assert (=> b!1106728 (= res!738680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1106729 () Bool)

(declare-fun res!738678 () Bool)

(assert (=> b!1106729 (=> (not res!738678) (not e!631542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1106729 (= res!738678 (validKeyInArray!0 k!934))))

(declare-fun b!1106730 () Bool)

(declare-fun res!738682 () Bool)

(assert (=> b!1106730 (=> (not res!738682) (not e!631547))))

(declare-fun lt!495488 () array!71820)

(declare-datatypes ((List!24223 0))(
  ( (Nil!24220) (Cons!24219 (h!25428 (_ BitVec 64)) (t!34495 List!24223)) )
))
(declare-fun arrayNoDuplicates!0 (array!71820 (_ BitVec 32) List!24223) Bool)

(assert (=> b!1106730 (= res!738682 (arrayNoDuplicates!0 lt!495488 #b00000000000000000000000000000000 Nil!24220))))

(declare-fun b!1106731 () Bool)

(assert (=> b!1106731 (= e!631542 e!631547)))

(declare-fun res!738686 () Bool)

(assert (=> b!1106731 (=> (not res!738686) (not e!631547))))

(assert (=> b!1106731 (= res!738686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495488 mask!1564))))

(assert (=> b!1106731 (= lt!495488 (array!71821 (store (arr!34559 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35096 _keys!1208)))))

(declare-fun b!1106732 () Bool)

(declare-fun e!631543 () Bool)

(assert (=> b!1106732 (= e!631545 (and e!631543 mapRes!43030))))

(declare-fun condMapEmpty!43030 () Bool)

(declare-fun mapDefault!43030 () ValueCell!13028)

