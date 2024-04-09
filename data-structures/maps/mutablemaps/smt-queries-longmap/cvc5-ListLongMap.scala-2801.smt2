; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40702 () Bool)

(assert start!40702)

(declare-fun b_free!10705 () Bool)

(declare-fun b_next!10705 () Bool)

(assert (=> start!40702 (= b_free!10705 (not b_next!10705))))

(declare-fun tp!37934 () Bool)

(declare-fun b_and!18731 () Bool)

(assert (=> start!40702 (= tp!37934 b_and!18731)))

(declare-datatypes ((V!17163 0))(
  ( (V!17164 (val!6066 Int)) )
))
(declare-datatypes ((tuple2!7906 0))(
  ( (tuple2!7907 (_1!3963 (_ BitVec 64)) (_2!3963 V!17163)) )
))
(declare-datatypes ((List!8016 0))(
  ( (Nil!8013) (Cons!8012 (h!8868 tuple2!7906) (t!13786 List!8016)) )
))
(declare-datatypes ((ListLongMap!6833 0))(
  ( (ListLongMap!6834 (toList!3432 List!8016)) )
))
(declare-fun call!29705 () ListLongMap!6833)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((array!27853 0))(
  ( (array!27854 (arr!13369 (Array (_ BitVec 32) (_ BitVec 64))) (size!13721 (_ BitVec 32))) )
))
(declare-fun lt!204468 () array!27853)

(declare-datatypes ((ValueCell!5678 0))(
  ( (ValueCellFull!5678 (v!8317 V!17163)) (EmptyCell!5678) )
))
(declare-datatypes ((array!27855 0))(
  ( (array!27856 (arr!13370 (Array (_ BitVec 32) ValueCell!5678)) (size!13722 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27855)

(declare-fun lt!204471 () array!27855)

(declare-fun zeroValue!515 () V!17163)

(declare-fun bm!29701 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!27853)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17163)

(declare-fun c!55889 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1612 (array!27853 array!27855 (_ BitVec 32) (_ BitVec 32) V!17163 V!17163 (_ BitVec 32) Int) ListLongMap!6833)

(assert (=> bm!29701 (= call!29705 (getCurrentListMapNoExtraKeys!1612 (ite c!55889 _keys!709 lt!204468) (ite c!55889 _values!549 lt!204471) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!449870 () Bool)

(declare-fun e!263678 () Bool)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun call!29704 () ListLongMap!6833)

(declare-fun v!412 () V!17163)

(declare-fun +!1505 (ListLongMap!6833 tuple2!7906) ListLongMap!6833)

(assert (=> b!449870 (= e!263678 (= call!29704 (+!1505 call!29705 (tuple2!7907 k!794 v!412))))))

(declare-fun b!449871 () Bool)

(declare-fun res!267774 () Bool)

(declare-fun e!263681 () Bool)

(assert (=> b!449871 (=> (not res!267774) (not e!263681))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!449871 (= res!267774 (or (= (select (arr!13369 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13369 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19698 () Bool)

(declare-fun mapRes!19698 () Bool)

(declare-fun tp!37935 () Bool)

(declare-fun e!263683 () Bool)

(assert (=> mapNonEmpty!19698 (= mapRes!19698 (and tp!37935 e!263683))))

(declare-fun mapRest!19698 () (Array (_ BitVec 32) ValueCell!5678))

(declare-fun mapKey!19698 () (_ BitVec 32))

(declare-fun mapValue!19698 () ValueCell!5678)

(assert (=> mapNonEmpty!19698 (= (arr!13370 _values!549) (store mapRest!19698 mapKey!19698 mapValue!19698))))

(declare-fun b!449872 () Bool)

(declare-fun res!267775 () Bool)

(assert (=> b!449872 (=> (not res!267775) (not e!263681))))

(assert (=> b!449872 (= res!267775 (and (= (size!13722 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13721 _keys!709) (size!13722 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!267785 () Bool)

(assert (=> start!40702 (=> (not res!267785) (not e!263681))))

(assert (=> start!40702 (= res!267785 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13721 _keys!709))))))

(assert (=> start!40702 e!263681))

(declare-fun tp_is_empty!12043 () Bool)

(assert (=> start!40702 tp_is_empty!12043))

(assert (=> start!40702 tp!37934))

(assert (=> start!40702 true))

(declare-fun e!263684 () Bool)

(declare-fun array_inv!9678 (array!27855) Bool)

(assert (=> start!40702 (and (array_inv!9678 _values!549) e!263684)))

(declare-fun array_inv!9679 (array!27853) Bool)

(assert (=> start!40702 (array_inv!9679 _keys!709)))

(declare-fun b!449873 () Bool)

(declare-fun res!267779 () Bool)

(assert (=> b!449873 (=> (not res!267779) (not e!263681))))

(declare-datatypes ((List!8017 0))(
  ( (Nil!8014) (Cons!8013 (h!8869 (_ BitVec 64)) (t!13787 List!8017)) )
))
(declare-fun arrayNoDuplicates!0 (array!27853 (_ BitVec 32) List!8017) Bool)

(assert (=> b!449873 (= res!267779 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8014))))

(declare-fun b!449874 () Bool)

(assert (=> b!449874 (= e!263683 tp_is_empty!12043)))

(declare-fun mapIsEmpty!19698 () Bool)

(assert (=> mapIsEmpty!19698 mapRes!19698))

(declare-fun b!449875 () Bool)

(declare-fun e!263685 () Bool)

(assert (=> b!449875 (= e!263681 e!263685)))

(declare-fun res!267780 () Bool)

(assert (=> b!449875 (=> (not res!267780) (not e!263685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27853 (_ BitVec 32)) Bool)

(assert (=> b!449875 (= res!267780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204468 mask!1025))))

(assert (=> b!449875 (= lt!204468 (array!27854 (store (arr!13369 _keys!709) i!563 k!794) (size!13721 _keys!709)))))

(declare-fun b!449876 () Bool)

(declare-fun res!267777 () Bool)

(assert (=> b!449876 (=> (not res!267777) (not e!263681))))

(declare-fun arrayContainsKey!0 (array!27853 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449876 (= res!267777 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449877 () Bool)

(declare-fun res!267781 () Bool)

(assert (=> b!449877 (=> (not res!267781) (not e!263681))))

(assert (=> b!449877 (= res!267781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!449878 () Bool)

(declare-fun e!263682 () Bool)

(assert (=> b!449878 (= e!263684 (and e!263682 mapRes!19698))))

(declare-fun condMapEmpty!19698 () Bool)

(declare-fun mapDefault!19698 () ValueCell!5678)

