; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37940 () Bool)

(assert start!37940)

(declare-fun b_free!8945 () Bool)

(declare-fun b_next!8945 () Bool)

(assert (=> start!37940 (= b_free!8945 (not b_next!8945))))

(declare-fun tp!31599 () Bool)

(declare-fun b_and!16253 () Bool)

(assert (=> start!37940 (= tp!31599 b_and!16253)))

(declare-fun b!389877 () Bool)

(declare-fun res!223125 () Bool)

(declare-fun e!236201 () Bool)

(assert (=> b!389877 (=> (not res!223125) (not e!236201))))

(declare-datatypes ((array!23109 0))(
  ( (array!23110 (arr!11016 (Array (_ BitVec 32) (_ BitVec 64))) (size!11368 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23109)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23109 (_ BitVec 32)) Bool)

(assert (=> b!389877 (= res!223125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389878 () Bool)

(declare-fun res!223128 () Bool)

(assert (=> b!389878 (=> (not res!223128) (not e!236201))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13927 0))(
  ( (V!13928 (val!4853 Int)) )
))
(declare-datatypes ((ValueCell!4465 0))(
  ( (ValueCellFull!4465 (v!7062 V!13927)) (EmptyCell!4465) )
))
(declare-datatypes ((array!23111 0))(
  ( (array!23112 (arr!11017 (Array (_ BitVec 32) ValueCell!4465)) (size!11369 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23111)

(assert (=> b!389878 (= res!223128 (and (= (size!11369 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11368 _keys!658) (size!11369 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389879 () Bool)

(declare-fun res!223124 () Bool)

(assert (=> b!389879 (=> (not res!223124) (not e!236201))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389879 (= res!223124 (validKeyInArray!0 k!778))))

(declare-fun res!223126 () Bool)

(assert (=> start!37940 (=> (not res!223126) (not e!236201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37940 (= res!223126 (validMask!0 mask!970))))

(assert (=> start!37940 e!236201))

(declare-fun e!236199 () Bool)

(declare-fun array_inv!8076 (array!23111) Bool)

(assert (=> start!37940 (and (array_inv!8076 _values!506) e!236199)))

(assert (=> start!37940 tp!31599))

(assert (=> start!37940 true))

(declare-fun tp_is_empty!9617 () Bool)

(assert (=> start!37940 tp_is_empty!9617))

(declare-fun array_inv!8077 (array!23109) Bool)

(assert (=> start!37940 (array_inv!8077 _keys!658)))

(declare-fun b!389880 () Bool)

(declare-fun e!236196 () Bool)

(declare-fun e!236197 () Bool)

(assert (=> b!389880 (= e!236196 e!236197)))

(declare-fun res!223130 () Bool)

(assert (=> b!389880 (=> res!223130 e!236197)))

(assert (=> b!389880 (= res!223130 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6474 0))(
  ( (tuple2!6475 (_1!3247 (_ BitVec 64)) (_2!3247 V!13927)) )
))
(declare-datatypes ((List!6356 0))(
  ( (Nil!6353) (Cons!6352 (h!7208 tuple2!6474) (t!11522 List!6356)) )
))
(declare-datatypes ((ListLongMap!5401 0))(
  ( (ListLongMap!5402 (toList!2716 List!6356)) )
))
(declare-fun lt!183678 () ListLongMap!5401)

(declare-fun lt!183677 () ListLongMap!5401)

(assert (=> b!389880 (= lt!183678 lt!183677)))

(declare-fun lt!183682 () ListLongMap!5401)

(declare-fun lt!183673 () tuple2!6474)

(declare-fun +!1014 (ListLongMap!5401 tuple2!6474) ListLongMap!5401)

(assert (=> b!389880 (= lt!183677 (+!1014 lt!183682 lt!183673))))

(declare-fun v!373 () V!13927)

(declare-fun zeroValue!472 () V!13927)

(declare-datatypes ((Unit!11917 0))(
  ( (Unit!11918) )
))
(declare-fun lt!183670 () Unit!11917)

(declare-fun lt!183671 () ListLongMap!5401)

(declare-fun addCommutativeForDiffKeys!331 (ListLongMap!5401 (_ BitVec 64) V!13927 (_ BitVec 64) V!13927) Unit!11917)

(assert (=> b!389880 (= lt!183670 (addCommutativeForDiffKeys!331 lt!183671 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183674 () ListLongMap!5401)

(declare-fun lt!183679 () tuple2!6474)

(assert (=> b!389880 (= lt!183674 (+!1014 lt!183678 lt!183679))))

(declare-fun lt!183675 () ListLongMap!5401)

(declare-fun lt!183676 () tuple2!6474)

(assert (=> b!389880 (= lt!183678 (+!1014 lt!183675 lt!183676))))

(declare-fun lt!183669 () ListLongMap!5401)

(declare-fun lt!183668 () ListLongMap!5401)

(assert (=> b!389880 (= lt!183669 lt!183668)))

(assert (=> b!389880 (= lt!183668 (+!1014 lt!183682 lt!183679))))

(assert (=> b!389880 (= lt!183682 (+!1014 lt!183671 lt!183676))))

(declare-fun lt!183667 () ListLongMap!5401)

(assert (=> b!389880 (= lt!183674 (+!1014 (+!1014 lt!183667 lt!183676) lt!183679))))

(declare-fun minValue!472 () V!13927)

(assert (=> b!389880 (= lt!183679 (tuple2!6475 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389880 (= lt!183676 (tuple2!6475 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!16002 () Bool)

(declare-fun mapRes!16002 () Bool)

(declare-fun tp!31598 () Bool)

(declare-fun e!236198 () Bool)

(assert (=> mapNonEmpty!16002 (= mapRes!16002 (and tp!31598 e!236198))))

(declare-fun mapValue!16002 () ValueCell!4465)

(declare-fun mapRest!16002 () (Array (_ BitVec 32) ValueCell!4465))

(declare-fun mapKey!16002 () (_ BitVec 32))

(assert (=> mapNonEmpty!16002 (= (arr!11017 _values!506) (store mapRest!16002 mapKey!16002 mapValue!16002))))

(declare-fun b!389881 () Bool)

(declare-fun res!223131 () Bool)

(assert (=> b!389881 (=> (not res!223131) (not e!236201))))

(declare-datatypes ((List!6357 0))(
  ( (Nil!6354) (Cons!6353 (h!7209 (_ BitVec 64)) (t!11523 List!6357)) )
))
(declare-fun arrayNoDuplicates!0 (array!23109 (_ BitVec 32) List!6357) Bool)

(assert (=> b!389881 (= res!223131 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6354))))

(declare-fun b!389882 () Bool)

(declare-fun res!223127 () Bool)

(assert (=> b!389882 (=> (not res!223127) (not e!236201))))

(declare-fun arrayContainsKey!0 (array!23109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389882 (= res!223127 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!389883 () Bool)

(declare-fun e!236202 () Bool)

(assert (=> b!389883 (= e!236202 (not e!236196))))

(declare-fun res!223134 () Bool)

(assert (=> b!389883 (=> res!223134 e!236196)))

(assert (=> b!389883 (= res!223134 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!2083 (array!23109 array!23111 (_ BitVec 32) (_ BitVec 32) V!13927 V!13927 (_ BitVec 32) Int) ListLongMap!5401)

(assert (=> b!389883 (= lt!183669 (getCurrentListMap!2083 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183681 () array!23109)

(declare-fun lt!183680 () array!23111)

(assert (=> b!389883 (= lt!183674 (getCurrentListMap!2083 lt!183681 lt!183680 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389883 (and (= lt!183667 lt!183675) (= lt!183675 lt!183667))))

(assert (=> b!389883 (= lt!183675 (+!1014 lt!183671 lt!183673))))

(assert (=> b!389883 (= lt!183673 (tuple2!6475 k!778 v!373))))

(declare-fun lt!183672 () Unit!11917)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!240 (array!23109 array!23111 (_ BitVec 32) (_ BitVec 32) V!13927 V!13927 (_ BitVec 32) (_ BitVec 64) V!13927 (_ BitVec 32) Int) Unit!11917)

(assert (=> b!389883 (= lt!183672 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!240 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!945 (array!23109 array!23111 (_ BitVec 32) (_ BitVec 32) V!13927 V!13927 (_ BitVec 32) Int) ListLongMap!5401)

(assert (=> b!389883 (= lt!183667 (getCurrentListMapNoExtraKeys!945 lt!183681 lt!183680 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389883 (= lt!183680 (array!23112 (store (arr!11017 _values!506) i!548 (ValueCellFull!4465 v!373)) (size!11369 _values!506)))))

(assert (=> b!389883 (= lt!183671 (getCurrentListMapNoExtraKeys!945 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389884 () Bool)

(assert (=> b!389884 (= e!236201 e!236202)))

(declare-fun res!223132 () Bool)

(assert (=> b!389884 (=> (not res!223132) (not e!236202))))

(assert (=> b!389884 (= res!223132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183681 mask!970))))

(assert (=> b!389884 (= lt!183681 (array!23110 (store (arr!11016 _keys!658) i!548 k!778) (size!11368 _keys!658)))))

(declare-fun b!389885 () Bool)

(declare-fun e!236200 () Bool)

(assert (=> b!389885 (= e!236199 (and e!236200 mapRes!16002))))

(declare-fun condMapEmpty!16002 () Bool)

(declare-fun mapDefault!16002 () ValueCell!4465)

