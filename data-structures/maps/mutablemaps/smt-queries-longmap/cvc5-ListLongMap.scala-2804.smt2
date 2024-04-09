; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40720 () Bool)

(assert start!40720)

(declare-fun b_free!10723 () Bool)

(declare-fun b_next!10723 () Bool)

(assert (=> start!40720 (= b_free!10723 (not b_next!10723))))

(declare-fun tp!37989 () Bool)

(declare-fun b_and!18749 () Bool)

(assert (=> start!40720 (= tp!37989 b_and!18749)))

(declare-fun b!450367 () Bool)

(declare-fun res!268142 () Bool)

(declare-fun e!263907 () Bool)

(assert (=> b!450367 (=> (not res!268142) (not e!263907))))

(declare-datatypes ((array!27889 0))(
  ( (array!27890 (arr!13387 (Array (_ BitVec 32) (_ BitVec 64))) (size!13739 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27889)

(declare-datatypes ((List!8033 0))(
  ( (Nil!8030) (Cons!8029 (h!8885 (_ BitVec 64)) (t!13803 List!8033)) )
))
(declare-fun arrayNoDuplicates!0 (array!27889 (_ BitVec 32) List!8033) Bool)

(assert (=> b!450367 (= res!268142 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8030))))

(declare-fun b!450368 () Bool)

(declare-fun res!268146 () Bool)

(declare-fun e!263913 () Bool)

(assert (=> b!450368 (=> (not res!268146) (not e!263913))))

(declare-fun lt!204607 () array!27889)

(assert (=> b!450368 (= res!268146 (arrayNoDuplicates!0 lt!204607 #b00000000000000000000000000000000 Nil!8030))))

(declare-fun b!450369 () Bool)

(declare-fun e!263910 () Bool)

(declare-fun tp_is_empty!12061 () Bool)

(assert (=> b!450369 (= e!263910 tp_is_empty!12061)))

(declare-fun b!450370 () Bool)

(declare-fun res!268147 () Bool)

(assert (=> b!450370 (=> (not res!268147) (not e!263907))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450370 (= res!268147 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!450371 () Bool)

(declare-fun res!268143 () Bool)

(assert (=> b!450371 (=> (not res!268143) (not e!263907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450371 (= res!268143 (validKeyInArray!0 k!794))))

(declare-fun b!450372 () Bool)

(declare-fun e!263906 () Bool)

(declare-fun e!263905 () Bool)

(assert (=> b!450372 (= e!263906 (not e!263905))))

(declare-fun res!268141 () Bool)

(assert (=> b!450372 (=> res!268141 e!263905)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!450372 (= res!268141 (validKeyInArray!0 (select (arr!13387 _keys!709) from!863)))))

(declare-fun e!263909 () Bool)

(assert (=> b!450372 e!263909))

(declare-fun c!55916 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450372 (= c!55916 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!17187 0))(
  ( (V!17188 (val!6075 Int)) )
))
(declare-fun minValue!515 () V!17187)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5687 0))(
  ( (ValueCellFull!5687 (v!8326 V!17187)) (EmptyCell!5687) )
))
(declare-datatypes ((array!27891 0))(
  ( (array!27892 (arr!13388 (Array (_ BitVec 32) ValueCell!5687)) (size!13740 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27891)

(declare-fun zeroValue!515 () V!17187)

(declare-datatypes ((Unit!13129 0))(
  ( (Unit!13130) )
))
(declare-fun lt!204604 () Unit!13129)

(declare-fun v!412 () V!17187)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!683 (array!27889 array!27891 (_ BitVec 32) (_ BitVec 32) V!17187 V!17187 (_ BitVec 32) (_ BitVec 64) V!17187 (_ BitVec 32) Int) Unit!13129)

(assert (=> b!450372 (= lt!204604 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!683 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450373 () Bool)

(assert (=> b!450373 (= e!263905 (bvslt i!563 (size!13740 _values!549)))))

(declare-fun bm!29755 () Bool)

(declare-datatypes ((tuple2!7924 0))(
  ( (tuple2!7925 (_1!3972 (_ BitVec 64)) (_2!3972 V!17187)) )
))
(declare-datatypes ((List!8034 0))(
  ( (Nil!8031) (Cons!8030 (h!8886 tuple2!7924) (t!13804 List!8034)) )
))
(declare-datatypes ((ListLongMap!6851 0))(
  ( (ListLongMap!6852 (toList!3441 List!8034)) )
))
(declare-fun call!29758 () ListLongMap!6851)

(declare-fun lt!204603 () array!27891)

(declare-fun getCurrentListMapNoExtraKeys!1619 (array!27889 array!27891 (_ BitVec 32) (_ BitVec 32) V!17187 V!17187 (_ BitVec 32) Int) ListLongMap!6851)

(assert (=> bm!29755 (= call!29758 (getCurrentListMapNoExtraKeys!1619 (ite c!55916 lt!204607 _keys!709) (ite c!55916 lt!204603 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450375 () Bool)

(declare-fun res!268148 () Bool)

(assert (=> b!450375 (=> (not res!268148) (not e!263907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27889 (_ BitVec 32)) Bool)

(assert (=> b!450375 (= res!268148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!450376 () Bool)

(assert (=> b!450376 (= e!263907 e!263913)))

(declare-fun res!268138 () Bool)

(assert (=> b!450376 (=> (not res!268138) (not e!263913))))

(assert (=> b!450376 (= res!268138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204607 mask!1025))))

(assert (=> b!450376 (= lt!204607 (array!27890 (store (arr!13387 _keys!709) i!563 k!794) (size!13739 _keys!709)))))

(declare-fun b!450377 () Bool)

(assert (=> b!450377 (= e!263913 e!263906)))

(declare-fun res!268137 () Bool)

(assert (=> b!450377 (=> (not res!268137) (not e!263906))))

(assert (=> b!450377 (= res!268137 (= from!863 i!563))))

(declare-fun lt!204606 () ListLongMap!6851)

(assert (=> b!450377 (= lt!204606 (getCurrentListMapNoExtraKeys!1619 lt!204607 lt!204603 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450377 (= lt!204603 (array!27892 (store (arr!13388 _values!549) i!563 (ValueCellFull!5687 v!412)) (size!13740 _values!549)))))

(declare-fun lt!204605 () ListLongMap!6851)

(assert (=> b!450377 (= lt!204605 (getCurrentListMapNoExtraKeys!1619 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450378 () Bool)

(declare-fun call!29759 () ListLongMap!6851)

(declare-fun +!1512 (ListLongMap!6851 tuple2!7924) ListLongMap!6851)

(assert (=> b!450378 (= e!263909 (= call!29758 (+!1512 call!29759 (tuple2!7925 k!794 v!412))))))

(declare-fun b!450379 () Bool)

(declare-fun e!263912 () Bool)

(assert (=> b!450379 (= e!263912 tp_is_empty!12061)))

(declare-fun b!450380 () Bool)

(declare-fun res!268149 () Bool)

(assert (=> b!450380 (=> (not res!268149) (not e!263907))))

(assert (=> b!450380 (= res!268149 (and (= (size!13740 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13739 _keys!709) (size!13740 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19725 () Bool)

(declare-fun mapRes!19725 () Bool)

(assert (=> mapIsEmpty!19725 mapRes!19725))

(declare-fun b!450381 () Bool)

(declare-fun e!263911 () Bool)

(assert (=> b!450381 (= e!263911 (and e!263912 mapRes!19725))))

(declare-fun condMapEmpty!19725 () Bool)

(declare-fun mapDefault!19725 () ValueCell!5687)

