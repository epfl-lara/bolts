; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37222 () Bool)

(assert start!37222)

(declare-fun b_free!8341 () Bool)

(declare-fun b_next!8341 () Bool)

(assert (=> start!37222 (= b_free!8341 (not b_next!8341))))

(declare-fun tp!29739 () Bool)

(declare-fun b_and!15601 () Bool)

(assert (=> start!37222 (= tp!29739 b_and!15601)))

(declare-fun b!375921 () Bool)

(declare-fun res!212451 () Bool)

(declare-fun e!228983 () Bool)

(assert (=> b!375921 (=> (not res!212451) (not e!228983))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375921 (= res!212451 (validKeyInArray!0 k!778))))

(declare-fun b!375922 () Bool)

(declare-fun e!228985 () Bool)

(declare-fun tp_is_empty!8989 () Bool)

(assert (=> b!375922 (= e!228985 tp_is_empty!8989)))

(declare-fun mapNonEmpty!15048 () Bool)

(declare-fun mapRes!15048 () Bool)

(declare-fun tp!29738 () Bool)

(declare-fun e!228981 () Bool)

(assert (=> mapNonEmpty!15048 (= mapRes!15048 (and tp!29738 e!228981))))

(declare-datatypes ((V!13091 0))(
  ( (V!13092 (val!4539 Int)) )
))
(declare-datatypes ((ValueCell!4151 0))(
  ( (ValueCellFull!4151 (v!6732 V!13091)) (EmptyCell!4151) )
))
(declare-datatypes ((array!21877 0))(
  ( (array!21878 (arr!10404 (Array (_ BitVec 32) ValueCell!4151)) (size!10756 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21877)

(declare-fun mapKey!15048 () (_ BitVec 32))

(declare-fun mapRest!15048 () (Array (_ BitVec 32) ValueCell!4151))

(declare-fun mapValue!15048 () ValueCell!4151)

(assert (=> mapNonEmpty!15048 (= (arr!10404 _values!506) (store mapRest!15048 mapKey!15048 mapValue!15048))))

(declare-fun b!375924 () Bool)

(declare-fun res!212447 () Bool)

(assert (=> b!375924 (=> (not res!212447) (not e!228983))))

(declare-datatypes ((array!21879 0))(
  ( (array!21880 (arr!10405 (Array (_ BitVec 32) (_ BitVec 64))) (size!10757 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21879)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375924 (= res!212447 (or (= (select (arr!10405 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10405 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!375925 () Bool)

(declare-fun res!212448 () Bool)

(declare-fun e!228986 () Bool)

(assert (=> b!375925 (=> (not res!212448) (not e!228986))))

(declare-fun lt!174319 () array!21879)

(declare-datatypes ((List!5888 0))(
  ( (Nil!5885) (Cons!5884 (h!6740 (_ BitVec 64)) (t!11046 List!5888)) )
))
(declare-fun arrayNoDuplicates!0 (array!21879 (_ BitVec 32) List!5888) Bool)

(assert (=> b!375925 (= res!212448 (arrayNoDuplicates!0 lt!174319 #b00000000000000000000000000000000 Nil!5885))))

(declare-fun b!375926 () Bool)

(declare-fun res!212449 () Bool)

(assert (=> b!375926 (=> (not res!212449) (not e!228983))))

(assert (=> b!375926 (= res!212449 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5885))))

(declare-fun b!375927 () Bool)

(declare-fun res!212444 () Bool)

(assert (=> b!375927 (=> (not res!212444) (not e!228983))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21879 (_ BitVec 32)) Bool)

(assert (=> b!375927 (= res!212444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375928 () Bool)

(declare-fun res!212443 () Bool)

(assert (=> b!375928 (=> (not res!212443) (not e!228983))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!375928 (= res!212443 (and (= (size!10756 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10757 _keys!658) (size!10756 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!375929 () Bool)

(declare-fun res!212452 () Bool)

(assert (=> b!375929 (=> (not res!212452) (not e!228983))))

(declare-fun arrayContainsKey!0 (array!21879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375929 (= res!212452 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!375930 () Bool)

(assert (=> b!375930 (= e!228983 e!228986)))

(declare-fun res!212446 () Bool)

(assert (=> b!375930 (=> (not res!212446) (not e!228986))))

(assert (=> b!375930 (= res!212446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174319 mask!970))))

(assert (=> b!375930 (= lt!174319 (array!21880 (store (arr!10405 _keys!658) i!548 k!778) (size!10757 _keys!658)))))

(declare-fun b!375931 () Bool)

(assert (=> b!375931 (= e!228981 tp_is_empty!8989)))

(declare-fun res!212453 () Bool)

(assert (=> start!37222 (=> (not res!212453) (not e!228983))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37222 (= res!212453 (validMask!0 mask!970))))

(assert (=> start!37222 e!228983))

(declare-fun e!228982 () Bool)

(declare-fun array_inv!7664 (array!21877) Bool)

(assert (=> start!37222 (and (array_inv!7664 _values!506) e!228982)))

(assert (=> start!37222 tp!29739))

(assert (=> start!37222 true))

(assert (=> start!37222 tp_is_empty!8989))

(declare-fun array_inv!7665 (array!21879) Bool)

(assert (=> start!37222 (array_inv!7665 _keys!658)))

(declare-fun b!375923 () Bool)

(declare-fun res!212442 () Bool)

(assert (=> b!375923 (=> (not res!212442) (not e!228983))))

(assert (=> b!375923 (= res!212442 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10757 _keys!658))))))

(declare-fun b!375932 () Bool)

(declare-fun e!228984 () Bool)

(assert (=> b!375932 (= e!228986 (not e!228984))))

(declare-fun res!212450 () Bool)

(assert (=> b!375932 (=> res!212450 e!228984)))

(assert (=> b!375932 (= res!212450 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6018 0))(
  ( (tuple2!6019 (_1!3019 (_ BitVec 64)) (_2!3019 V!13091)) )
))
(declare-datatypes ((List!5889 0))(
  ( (Nil!5886) (Cons!5885 (h!6741 tuple2!6018) (t!11047 List!5889)) )
))
(declare-datatypes ((ListLongMap!4945 0))(
  ( (ListLongMap!4946 (toList!2488 List!5889)) )
))
(declare-fun lt!174314 () ListLongMap!4945)

(declare-fun zeroValue!472 () V!13091)

(declare-fun minValue!472 () V!13091)

(declare-fun getCurrentListMap!1927 (array!21879 array!21877 (_ BitVec 32) (_ BitVec 32) V!13091 V!13091 (_ BitVec 32) Int) ListLongMap!4945)

(assert (=> b!375932 (= lt!174314 (getCurrentListMap!1927 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174316 () ListLongMap!4945)

(declare-fun lt!174317 () array!21877)

(assert (=> b!375932 (= lt!174316 (getCurrentListMap!1927 lt!174319 lt!174317 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174311 () ListLongMap!4945)

(declare-fun lt!174318 () ListLongMap!4945)

(assert (=> b!375932 (and (= lt!174311 lt!174318) (= lt!174318 lt!174311))))

(declare-fun lt!174315 () ListLongMap!4945)

(declare-fun lt!174313 () tuple2!6018)

(declare-fun +!829 (ListLongMap!4945 tuple2!6018) ListLongMap!4945)

(assert (=> b!375932 (= lt!174318 (+!829 lt!174315 lt!174313))))

(declare-fun v!373 () V!13091)

(assert (=> b!375932 (= lt!174313 (tuple2!6019 k!778 v!373))))

(declare-datatypes ((Unit!11561 0))(
  ( (Unit!11562) )
))
(declare-fun lt!174322 () Unit!11561)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!78 (array!21879 array!21877 (_ BitVec 32) (_ BitVec 32) V!13091 V!13091 (_ BitVec 32) (_ BitVec 64) V!13091 (_ BitVec 32) Int) Unit!11561)

(assert (=> b!375932 (= lt!174322 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!78 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!745 (array!21879 array!21877 (_ BitVec 32) (_ BitVec 32) V!13091 V!13091 (_ BitVec 32) Int) ListLongMap!4945)

(assert (=> b!375932 (= lt!174311 (getCurrentListMapNoExtraKeys!745 lt!174319 lt!174317 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!375932 (= lt!174317 (array!21878 (store (arr!10404 _values!506) i!548 (ValueCellFull!4151 v!373)) (size!10756 _values!506)))))

(assert (=> b!375932 (= lt!174315 (getCurrentListMapNoExtraKeys!745 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!375933 () Bool)

(declare-fun e!228980 () Bool)

(assert (=> b!375933 (= e!228980 true)))

(declare-fun lt!174321 () ListLongMap!4945)

(declare-fun lt!174320 () ListLongMap!4945)

(assert (=> b!375933 (= lt!174321 (+!829 lt!174320 lt!174313))))

(declare-fun lt!174310 () Unit!11561)

(declare-fun addCommutativeForDiffKeys!254 (ListLongMap!4945 (_ BitVec 64) V!13091 (_ BitVec 64) V!13091) Unit!11561)

(assert (=> b!375933 (= lt!174310 (addCommutativeForDiffKeys!254 lt!174315 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375934 () Bool)

(assert (=> b!375934 (= e!228984 e!228980)))

(declare-fun res!212445 () Bool)

(assert (=> b!375934 (=> res!212445 e!228980)))

(assert (=> b!375934 (= res!212445 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!375934 (= lt!174316 lt!174321)))

(declare-fun lt!174312 () tuple2!6018)

(assert (=> b!375934 (= lt!174321 (+!829 lt!174318 lt!174312))))

(assert (=> b!375934 (= lt!174314 lt!174320)))

(assert (=> b!375934 (= lt!174320 (+!829 lt!174315 lt!174312))))

(assert (=> b!375934 (= lt!174316 (+!829 lt!174311 lt!174312))))

(assert (=> b!375934 (= lt!174312 (tuple2!6019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375935 () Bool)

(assert (=> b!375935 (= e!228982 (and e!228985 mapRes!15048))))

(declare-fun condMapEmpty!15048 () Bool)

(declare-fun mapDefault!15048 () ValueCell!4151)

