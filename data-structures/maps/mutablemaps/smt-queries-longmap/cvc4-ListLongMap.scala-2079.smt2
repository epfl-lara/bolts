; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35654 () Bool)

(assert start!35654)

(declare-fun b_free!7901 () Bool)

(declare-fun b_next!7901 () Bool)

(assert (=> start!35654 (= b_free!7901 (not b_next!7901))))

(declare-fun tp!27686 () Bool)

(declare-fun b_and!15161 () Bool)

(assert (=> start!35654 (= tp!27686 b_and!15161)))

(declare-fun b!357696 () Bool)

(declare-fun res!198815 () Bool)

(declare-fun e!218982 () Bool)

(assert (=> b!357696 (=> (not res!198815) (not e!218982))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-datatypes ((array!19731 0))(
  ( (array!19732 (arr!9356 (Array (_ BitVec 32) (_ BitVec 64))) (size!9708 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19731)

(declare-fun arrayContainsKey!0 (array!19731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357696 (= res!198815 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357697 () Bool)

(declare-fun e!218984 () Bool)

(assert (=> b!357697 (= e!218984 true)))

(declare-datatypes ((V!11775 0))(
  ( (V!11776 (val!4094 Int)) )
))
(declare-fun minValue!1150 () V!11775)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11775)

(declare-datatypes ((ValueCell!3706 0))(
  ( (ValueCellFull!3706 (v!6284 V!11775)) (EmptyCell!3706) )
))
(declare-datatypes ((array!19733 0))(
  ( (array!19734 (arr!9357 (Array (_ BitVec 32) ValueCell!3706)) (size!9709 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19733)

(declare-datatypes ((tuple2!5714 0))(
  ( (tuple2!5715 (_1!2867 (_ BitVec 64)) (_2!2867 V!11775)) )
))
(declare-datatypes ((List!5429 0))(
  ( (Nil!5426) (Cons!5425 (h!6281 tuple2!5714) (t!10587 List!5429)) )
))
(declare-datatypes ((ListLongMap!4641 0))(
  ( (ListLongMap!4642 (toList!2336 List!5429)) )
))
(declare-fun contains!2412 (ListLongMap!4641 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1853 (array!19731 array!19733 (_ BitVec 32) (_ BitVec 32) V!11775 V!11775 (_ BitVec 32) Int) ListLongMap!4641)

(assert (=> b!357697 (contains!2412 (getCurrentListMap!1853 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-datatypes ((Unit!11031 0))(
  ( (Unit!11032) )
))
(declare-fun lt!166078 () Unit!11031)

(declare-fun lemmaArrayContainsKeyThenInListMap!346 (array!19731 array!19733 (_ BitVec 32) (_ BitVec 32) V!11775 V!11775 (_ BitVec 64) (_ BitVec 32) Int) Unit!11031)

(assert (=> b!357697 (= lt!166078 (lemmaArrayContainsKeyThenInListMap!346 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357698 () Bool)

(declare-fun e!218983 () Bool)

(declare-fun tp_is_empty!8099 () Bool)

(assert (=> b!357698 (= e!218983 tp_is_empty!8099)))

(declare-fun b!357699 () Bool)

(declare-fun res!198813 () Bool)

(assert (=> b!357699 (=> (not res!198813) (not e!218982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19731 (_ BitVec 32)) Bool)

(assert (=> b!357699 (= res!198813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13656 () Bool)

(declare-fun mapRes!13656 () Bool)

(assert (=> mapIsEmpty!13656 mapRes!13656))

(declare-fun b!357700 () Bool)

(declare-fun e!218980 () Bool)

(assert (=> b!357700 (= e!218980 (and e!218983 mapRes!13656))))

(declare-fun condMapEmpty!13656 () Bool)

(declare-fun mapDefault!13656 () ValueCell!3706)

