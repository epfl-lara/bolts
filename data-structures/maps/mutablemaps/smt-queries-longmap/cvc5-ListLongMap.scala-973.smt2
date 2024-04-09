; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21088 () Bool)

(assert start!21088)

(declare-fun b_free!5587 () Bool)

(declare-fun b_next!5587 () Bool)

(assert (=> start!21088 (= b_free!5587 (not b_next!5587))))

(declare-fun tp!19823 () Bool)

(declare-fun b_and!12435 () Bool)

(assert (=> start!21088 (= tp!19823 b_and!12435)))

(declare-fun b!211939 () Bool)

(declare-fun e!137939 () Bool)

(declare-fun e!137936 () Bool)

(assert (=> b!211939 (= e!137939 e!137936)))

(declare-fun res!103572 () Bool)

(assert (=> b!211939 (=> res!103572 e!137936)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!211939 (= res!103572 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6913 0))(
  ( (V!6914 (val!2769 Int)) )
))
(declare-datatypes ((tuple2!4184 0))(
  ( (tuple2!4185 (_1!2102 (_ BitVec 64)) (_2!2102 V!6913)) )
))
(declare-datatypes ((List!3099 0))(
  ( (Nil!3096) (Cons!3095 (h!3737 tuple2!4184) (t!8052 List!3099)) )
))
(declare-datatypes ((ListLongMap!3111 0))(
  ( (ListLongMap!3112 (toList!1571 List!3099)) )
))
(declare-fun lt!109151 () ListLongMap!3111)

(declare-fun lt!109155 () ListLongMap!3111)

(assert (=> b!211939 (= lt!109151 lt!109155)))

(declare-fun lt!109153 () ListLongMap!3111)

(declare-fun lt!109146 () tuple2!4184)

(declare-fun +!564 (ListLongMap!3111 tuple2!4184) ListLongMap!3111)

(assert (=> b!211939 (= lt!109155 (+!564 lt!109153 lt!109146))))

(declare-fun lt!109149 () ListLongMap!3111)

(declare-fun lt!109156 () ListLongMap!3111)

(assert (=> b!211939 (= lt!109149 lt!109156)))

(declare-fun lt!109148 () ListLongMap!3111)

(assert (=> b!211939 (= lt!109156 (+!564 lt!109148 lt!109146))))

(declare-fun lt!109145 () ListLongMap!3111)

(assert (=> b!211939 (= lt!109151 (+!564 lt!109145 lt!109146))))

(declare-fun zeroValue!615 () V!6913)

(assert (=> b!211939 (= lt!109146 (tuple2!4185 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211940 () Bool)

(declare-fun res!103568 () Bool)

(declare-fun e!137935 () Bool)

(assert (=> b!211940 (=> (not res!103568) (not e!137935))))

(declare-datatypes ((array!10100 0))(
  ( (array!10101 (arr!4793 (Array (_ BitVec 32) (_ BitVec 64))) (size!5118 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10100)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2381 0))(
  ( (ValueCellFull!2381 (v!4763 V!6913)) (EmptyCell!2381) )
))
(declare-datatypes ((array!10102 0))(
  ( (array!10103 (arr!4794 (Array (_ BitVec 32) ValueCell!2381)) (size!5119 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10102)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!211940 (= res!103568 (and (= (size!5119 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5118 _keys!825) (size!5119 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!211941 () Bool)

(declare-fun res!103570 () Bool)

(assert (=> b!211941 (=> (not res!103570) (not e!137935))))

(declare-datatypes ((List!3100 0))(
  ( (Nil!3097) (Cons!3096 (h!3738 (_ BitVec 64)) (t!8053 List!3100)) )
))
(declare-fun arrayNoDuplicates!0 (array!10100 (_ BitVec 32) List!3100) Bool)

(assert (=> b!211941 (= res!103570 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3097))))

(declare-fun b!211942 () Bool)

(declare-fun res!103571 () Bool)

(assert (=> b!211942 (=> (not res!103571) (not e!137935))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!211942 (= res!103571 (= (select (arr!4793 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!9263 () Bool)

(declare-fun mapRes!9263 () Bool)

(assert (=> mapIsEmpty!9263 mapRes!9263))

(declare-fun b!211943 () Bool)

(declare-fun res!103576 () Bool)

(assert (=> b!211943 (=> (not res!103576) (not e!137935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10100 (_ BitVec 32)) Bool)

(assert (=> b!211943 (= res!103576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!211944 () Bool)

(assert (=> b!211944 (= e!137936 (bvslt i!601 (size!5119 _values!649)))))

(declare-fun lt!109152 () tuple2!4184)

(assert (=> b!211944 (= lt!109155 (+!564 lt!109156 lt!109152))))

(declare-datatypes ((Unit!6429 0))(
  ( (Unit!6430) )
))
(declare-fun lt!109147 () Unit!6429)

(declare-fun v!520 () V!6913)

(declare-fun addCommutativeForDiffKeys!198 (ListLongMap!3111 (_ BitVec 64) V!6913 (_ BitVec 64) V!6913) Unit!6429)

(assert (=> b!211944 (= lt!109147 (addCommutativeForDiffKeys!198 lt!109148 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!211945 () Bool)

(assert (=> b!211945 (= e!137935 (not e!137939))))

(declare-fun res!103573 () Bool)

(assert (=> b!211945 (=> res!103573 e!137939)))

(assert (=> b!211945 (= res!103573 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6913)

(declare-fun getCurrentListMap!1099 (array!10100 array!10102 (_ BitVec 32) (_ BitVec 32) V!6913 V!6913 (_ BitVec 32) Int) ListLongMap!3111)

(assert (=> b!211945 (= lt!109149 (getCurrentListMap!1099 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109154 () array!10102)

(assert (=> b!211945 (= lt!109151 (getCurrentListMap!1099 _keys!825 lt!109154 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211945 (and (= lt!109145 lt!109153) (= lt!109153 lt!109145))))

(assert (=> b!211945 (= lt!109153 (+!564 lt!109148 lt!109152))))

(assert (=> b!211945 (= lt!109152 (tuple2!4185 k!843 v!520))))

(declare-fun lt!109150 () Unit!6429)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!216 (array!10100 array!10102 (_ BitVec 32) (_ BitVec 32) V!6913 V!6913 (_ BitVec 32) (_ BitVec 64) V!6913 (_ BitVec 32) Int) Unit!6429)

(assert (=> b!211945 (= lt!109150 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!216 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!498 (array!10100 array!10102 (_ BitVec 32) (_ BitVec 32) V!6913 V!6913 (_ BitVec 32) Int) ListLongMap!3111)

(assert (=> b!211945 (= lt!109145 (getCurrentListMapNoExtraKeys!498 _keys!825 lt!109154 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211945 (= lt!109154 (array!10103 (store (arr!4794 _values!649) i!601 (ValueCellFull!2381 v!520)) (size!5119 _values!649)))))

(assert (=> b!211945 (= lt!109148 (getCurrentListMapNoExtraKeys!498 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211946 () Bool)

(declare-fun e!137938 () Bool)

(declare-fun e!137937 () Bool)

(assert (=> b!211946 (= e!137938 (and e!137937 mapRes!9263))))

(declare-fun condMapEmpty!9263 () Bool)

(declare-fun mapDefault!9263 () ValueCell!2381)

