; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40772 () Bool)

(assert start!40772)

(declare-fun b_free!10753 () Bool)

(declare-fun b_next!10753 () Bool)

(assert (=> start!40772 (= b_free!10753 (not b_next!10753))))

(declare-fun tp!38082 () Bool)

(declare-fun b_and!18811 () Bool)

(assert (=> start!40772 (= tp!38082 b_and!18811)))

(declare-datatypes ((V!17227 0))(
  ( (V!17228 (val!6090 Int)) )
))
(declare-datatypes ((tuple2!7954 0))(
  ( (tuple2!7955 (_1!3987 (_ BitVec 64)) (_2!3987 V!17227)) )
))
(declare-datatypes ((List!8060 0))(
  ( (Nil!8057) (Cons!8056 (h!8912 tuple2!7954) (t!13844 List!8060)) )
))
(declare-datatypes ((ListLongMap!6881 0))(
  ( (ListLongMap!6882 (toList!3456 List!8060)) )
))
(declare-fun call!29869 () ListLongMap!6881)

(declare-fun e!264414 () Bool)

(declare-fun b!451391 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!29870 () ListLongMap!6881)

(declare-fun v!412 () V!17227)

(declare-fun +!1524 (ListLongMap!6881 tuple2!7954) ListLongMap!6881)

(assert (=> b!451391 (= e!264414 (= call!29870 (+!1524 call!29869 (tuple2!7955 k!794 v!412))))))

(declare-fun b!451392 () Bool)

(declare-fun res!268831 () Bool)

(declare-fun e!264419 () Bool)

(assert (=> b!451392 (=> (not res!268831) (not e!264419))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27951 0))(
  ( (array!27952 (arr!13417 (Array (_ BitVec 32) (_ BitVec 64))) (size!13769 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27951)

(assert (=> b!451392 (= res!268831 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13769 _keys!709))))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5702 0))(
  ( (ValueCellFull!5702 (v!8345 V!17227)) (EmptyCell!5702) )
))
(declare-datatypes ((array!27953 0))(
  ( (array!27954 (arr!13418 (Array (_ BitVec 32) ValueCell!5702)) (size!13770 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27953)

(declare-fun zeroValue!515 () V!17227)

(declare-fun lt!204928 () array!27951)

(declare-fun c!56003 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17227)

(declare-fun lt!204927 () array!27953)

(declare-fun bm!29866 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1633 (array!27951 array!27953 (_ BitVec 32) (_ BitVec 32) V!17227 V!17227 (_ BitVec 32) Int) ListLongMap!6881)

(assert (=> bm!29866 (= call!29869 (getCurrentListMapNoExtraKeys!1633 (ite c!56003 _keys!709 lt!204928) (ite c!56003 _values!549 lt!204927) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451393 () Bool)

(declare-fun e!264418 () Bool)

(declare-fun e!264413 () Bool)

(assert (=> b!451393 (= e!264418 e!264413)))

(declare-fun res!268836 () Bool)

(assert (=> b!451393 (=> (not res!268836) (not e!264413))))

(assert (=> b!451393 (= res!268836 (= from!863 i!563))))

(declare-fun lt!204930 () ListLongMap!6881)

(assert (=> b!451393 (= lt!204930 (getCurrentListMapNoExtraKeys!1633 lt!204928 lt!204927 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451393 (= lt!204927 (array!27954 (store (arr!13418 _values!549) i!563 (ValueCellFull!5702 v!412)) (size!13770 _values!549)))))

(declare-fun lt!204926 () ListLongMap!6881)

(assert (=> b!451393 (= lt!204926 (getCurrentListMapNoExtraKeys!1633 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!451394 () Bool)

(declare-fun res!268842 () Bool)

(assert (=> b!451394 (=> (not res!268842) (not e!264418))))

(declare-datatypes ((List!8061 0))(
  ( (Nil!8058) (Cons!8057 (h!8913 (_ BitVec 64)) (t!13845 List!8061)) )
))
(declare-fun arrayNoDuplicates!0 (array!27951 (_ BitVec 32) List!8061) Bool)

(assert (=> b!451394 (= res!268842 (arrayNoDuplicates!0 lt!204928 #b00000000000000000000000000000000 Nil!8058))))

(declare-fun b!451395 () Bool)

(declare-fun e!264415 () Bool)

(assert (=> b!451395 (= e!264413 (not e!264415))))

(declare-fun res!268838 () Bool)

(assert (=> b!451395 (=> res!268838 e!264415)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451395 (= res!268838 (validKeyInArray!0 (select (arr!13417 _keys!709) from!863)))))

(assert (=> b!451395 e!264414))

(assert (=> b!451395 (= c!56003 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13153 0))(
  ( (Unit!13154) )
))
(declare-fun lt!204929 () Unit!13153)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!695 (array!27951 array!27953 (_ BitVec 32) (_ BitVec 32) V!17227 V!17227 (_ BitVec 32) (_ BitVec 64) V!17227 (_ BitVec 32) Int) Unit!13153)

(assert (=> b!451395 (= lt!204929 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!695 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451396 () Bool)

(declare-fun res!268835 () Bool)

(assert (=> b!451396 (=> (not res!268835) (not e!264419))))

(assert (=> b!451396 (= res!268835 (or (= (select (arr!13417 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13417 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451397 () Bool)

(declare-fun e!264417 () Bool)

(declare-fun tp_is_empty!12091 () Bool)

(assert (=> b!451397 (= e!264417 tp_is_empty!12091)))

(declare-fun b!451399 () Bool)

(declare-fun res!268837 () Bool)

(assert (=> b!451399 (=> (not res!268837) (not e!264419))))

(assert (=> b!451399 (= res!268837 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8058))))

(declare-fun b!451400 () Bool)

(declare-fun res!268834 () Bool)

(assert (=> b!451400 (=> (not res!268834) (not e!264419))))

(assert (=> b!451400 (= res!268834 (and (= (size!13770 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13769 _keys!709) (size!13770 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!451401 () Bool)

(assert (=> b!451401 (= e!264414 (= call!29869 call!29870))))

(declare-fun b!451402 () Bool)

(assert (=> b!451402 (= e!264415 true)))

(declare-fun get!6617 (ValueCell!5702 V!17227) V!17227)

(declare-fun dynLambda!848 (Int (_ BitVec 64)) V!17227)

(assert (=> b!451402 (= lt!204930 (+!1524 (getCurrentListMapNoExtraKeys!1633 lt!204928 lt!204927 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7955 (select (arr!13417 lt!204928) from!863) (get!6617 (select (arr!13418 lt!204927) from!863) (dynLambda!848 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451403 () Bool)

(declare-fun res!268832 () Bool)

(assert (=> b!451403 (=> (not res!268832) (not e!264419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27951 (_ BitVec 32)) Bool)

(assert (=> b!451403 (= res!268832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19773 () Bool)

(declare-fun mapRes!19773 () Bool)

(assert (=> mapIsEmpty!19773 mapRes!19773))

(declare-fun b!451404 () Bool)

(declare-fun res!268844 () Bool)

(assert (=> b!451404 (=> (not res!268844) (not e!264419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451404 (= res!268844 (validMask!0 mask!1025))))

(declare-fun b!451405 () Bool)

(declare-fun res!268839 () Bool)

(assert (=> b!451405 (=> (not res!268839) (not e!264418))))

(assert (=> b!451405 (= res!268839 (bvsle from!863 i!563))))

(declare-fun b!451406 () Bool)

(declare-fun res!268841 () Bool)

(assert (=> b!451406 (=> (not res!268841) (not e!264419))))

(assert (=> b!451406 (= res!268841 (validKeyInArray!0 k!794))))

(declare-fun b!451407 () Bool)

(declare-fun e!264416 () Bool)

(assert (=> b!451407 (= e!264416 tp_is_empty!12091)))

(declare-fun res!268833 () Bool)

(assert (=> start!40772 (=> (not res!268833) (not e!264419))))

(assert (=> start!40772 (= res!268833 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13769 _keys!709))))))

(assert (=> start!40772 e!264419))

(assert (=> start!40772 tp_is_empty!12091))

(assert (=> start!40772 tp!38082))

(assert (=> start!40772 true))

(declare-fun e!264420 () Bool)

(declare-fun array_inv!9712 (array!27953) Bool)

(assert (=> start!40772 (and (array_inv!9712 _values!549) e!264420)))

(declare-fun array_inv!9713 (array!27951) Bool)

(assert (=> start!40772 (array_inv!9713 _keys!709)))

(declare-fun b!451398 () Bool)

(assert (=> b!451398 (= e!264419 e!264418)))

(declare-fun res!268840 () Bool)

(assert (=> b!451398 (=> (not res!268840) (not e!264418))))

(assert (=> b!451398 (= res!268840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204928 mask!1025))))

(assert (=> b!451398 (= lt!204928 (array!27952 (store (arr!13417 _keys!709) i!563 k!794) (size!13769 _keys!709)))))

(declare-fun bm!29867 () Bool)

(assert (=> bm!29867 (= call!29870 (getCurrentListMapNoExtraKeys!1633 (ite c!56003 lt!204928 _keys!709) (ite c!56003 lt!204927 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451408 () Bool)

(declare-fun res!268843 () Bool)

(assert (=> b!451408 (=> (not res!268843) (not e!264419))))

(declare-fun arrayContainsKey!0 (array!27951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451408 (= res!268843 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!451409 () Bool)

(assert (=> b!451409 (= e!264420 (and e!264416 mapRes!19773))))

(declare-fun condMapEmpty!19773 () Bool)

(declare-fun mapDefault!19773 () ValueCell!5702)

