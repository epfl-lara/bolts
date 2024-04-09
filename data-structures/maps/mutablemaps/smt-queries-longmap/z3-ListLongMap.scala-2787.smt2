; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40620 () Bool)

(assert start!40620)

(declare-fun b_free!10623 () Bool)

(declare-fun b_next!10623 () Bool)

(assert (=> start!40620 (= b_free!10623 (not b_next!10623))))

(declare-fun tp!37689 () Bool)

(declare-fun b_and!18649 () Bool)

(assert (=> start!40620 (= tp!37689 b_and!18649)))

(declare-fun b!447992 () Bool)

(declare-fun e!262921 () Bool)

(assert (=> b!447992 (= e!262921 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17053 0))(
  ( (V!17054 (val!6025 Int)) )
))
(declare-fun minValue!515 () V!17053)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5637 0))(
  ( (ValueCellFull!5637 (v!8276 V!17053)) (EmptyCell!5637) )
))
(declare-datatypes ((array!27689 0))(
  ( (array!27690 (arr!13287 (Array (_ BitVec 32) ValueCell!5637)) (size!13639 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27689)

(declare-fun zeroValue!515 () V!17053)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27691 0))(
  ( (array!27692 (arr!13288 (Array (_ BitVec 32) (_ BitVec 64))) (size!13640 (_ BitVec 32))) )
))
(declare-fun lt!204077 () array!27691)

(declare-datatypes ((tuple2!7834 0))(
  ( (tuple2!7835 (_1!3927 (_ BitVec 64)) (_2!3927 V!17053)) )
))
(declare-datatypes ((List!7944 0))(
  ( (Nil!7941) (Cons!7940 (h!8796 tuple2!7834) (t!13714 List!7944)) )
))
(declare-datatypes ((ListLongMap!6761 0))(
  ( (ListLongMap!6762 (toList!3396 List!7944)) )
))
(declare-fun lt!204078 () ListLongMap!6761)

(declare-fun v!412 () V!17053)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1576 (array!27691 array!27689 (_ BitVec 32) (_ BitVec 32) V!17053 V!17053 (_ BitVec 32) Int) ListLongMap!6761)

(assert (=> b!447992 (= lt!204078 (getCurrentListMapNoExtraKeys!1576 lt!204077 (array!27690 (store (arr!13287 _values!549) i!563 (ValueCellFull!5637 v!412)) (size!13639 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204079 () ListLongMap!6761)

(declare-fun _keys!709 () array!27691)

(assert (=> b!447992 (= lt!204079 (getCurrentListMapNoExtraKeys!1576 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447993 () Bool)

(declare-fun res!266288 () Bool)

(assert (=> b!447993 (=> (not res!266288) (not e!262921))))

(assert (=> b!447993 (= res!266288 (bvsle from!863 i!563))))

(declare-fun b!447994 () Bool)

(declare-fun res!266287 () Bool)

(declare-fun e!262919 () Bool)

(assert (=> b!447994 (=> (not res!266287) (not e!262919))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447994 (= res!266287 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!447995 () Bool)

(declare-fun res!266292 () Bool)

(assert (=> b!447995 (=> (not res!266292) (not e!262919))))

(assert (=> b!447995 (= res!266292 (and (= (size!13639 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13640 _keys!709) (size!13639 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!447996 () Bool)

(declare-fun e!262922 () Bool)

(declare-fun tp_is_empty!11961 () Bool)

(assert (=> b!447996 (= e!262922 tp_is_empty!11961)))

(declare-fun b!447997 () Bool)

(declare-fun res!266297 () Bool)

(assert (=> b!447997 (=> (not res!266297) (not e!262919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!447997 (= res!266297 (validKeyInArray!0 k0!794))))

(declare-fun b!447998 () Bool)

(declare-fun res!266293 () Bool)

(assert (=> b!447998 (=> (not res!266293) (not e!262919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447998 (= res!266293 (validMask!0 mask!1025))))

(declare-fun b!447999 () Bool)

(assert (=> b!447999 (= e!262919 e!262921)))

(declare-fun res!266295 () Bool)

(assert (=> b!447999 (=> (not res!266295) (not e!262921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27691 (_ BitVec 32)) Bool)

(assert (=> b!447999 (= res!266295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204077 mask!1025))))

(assert (=> b!447999 (= lt!204077 (array!27692 (store (arr!13288 _keys!709) i!563 k0!794) (size!13640 _keys!709)))))

(declare-fun b!448000 () Bool)

(declare-fun res!266289 () Bool)

(assert (=> b!448000 (=> (not res!266289) (not e!262919))))

(declare-datatypes ((List!7945 0))(
  ( (Nil!7942) (Cons!7941 (h!8797 (_ BitVec 64)) (t!13715 List!7945)) )
))
(declare-fun arrayNoDuplicates!0 (array!27691 (_ BitVec 32) List!7945) Bool)

(assert (=> b!448000 (= res!266289 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7942))))

(declare-fun b!448001 () Bool)

(declare-fun e!262923 () Bool)

(assert (=> b!448001 (= e!262923 tp_is_empty!11961)))

(declare-fun res!266298 () Bool)

(assert (=> start!40620 (=> (not res!266298) (not e!262919))))

(assert (=> start!40620 (= res!266298 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13640 _keys!709))))))

(assert (=> start!40620 e!262919))

(assert (=> start!40620 tp_is_empty!11961))

(assert (=> start!40620 tp!37689))

(assert (=> start!40620 true))

(declare-fun e!262920 () Bool)

(declare-fun array_inv!9624 (array!27689) Bool)

(assert (=> start!40620 (and (array_inv!9624 _values!549) e!262920)))

(declare-fun array_inv!9625 (array!27691) Bool)

(assert (=> start!40620 (array_inv!9625 _keys!709)))

(declare-fun mapIsEmpty!19575 () Bool)

(declare-fun mapRes!19575 () Bool)

(assert (=> mapIsEmpty!19575 mapRes!19575))

(declare-fun b!448002 () Bool)

(declare-fun res!266291 () Bool)

(assert (=> b!448002 (=> (not res!266291) (not e!262919))))

(assert (=> b!448002 (= res!266291 (or (= (select (arr!13288 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13288 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19575 () Bool)

(declare-fun tp!37688 () Bool)

(assert (=> mapNonEmpty!19575 (= mapRes!19575 (and tp!37688 e!262922))))

(declare-fun mapValue!19575 () ValueCell!5637)

(declare-fun mapKey!19575 () (_ BitVec 32))

(declare-fun mapRest!19575 () (Array (_ BitVec 32) ValueCell!5637))

(assert (=> mapNonEmpty!19575 (= (arr!13287 _values!549) (store mapRest!19575 mapKey!19575 mapValue!19575))))

(declare-fun b!448003 () Bool)

(declare-fun res!266290 () Bool)

(assert (=> b!448003 (=> (not res!266290) (not e!262919))))

(assert (=> b!448003 (= res!266290 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13640 _keys!709))))))

(declare-fun b!448004 () Bool)

(declare-fun res!266296 () Bool)

(assert (=> b!448004 (=> (not res!266296) (not e!262921))))

(assert (=> b!448004 (= res!266296 (arrayNoDuplicates!0 lt!204077 #b00000000000000000000000000000000 Nil!7942))))

(declare-fun b!448005 () Bool)

(declare-fun res!266294 () Bool)

(assert (=> b!448005 (=> (not res!266294) (not e!262919))))

(assert (=> b!448005 (= res!266294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448006 () Bool)

(assert (=> b!448006 (= e!262920 (and e!262923 mapRes!19575))))

(declare-fun condMapEmpty!19575 () Bool)

(declare-fun mapDefault!19575 () ValueCell!5637)

(assert (=> b!448006 (= condMapEmpty!19575 (= (arr!13287 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5637)) mapDefault!19575)))))

(assert (= (and start!40620 res!266298) b!447998))

(assert (= (and b!447998 res!266293) b!447995))

(assert (= (and b!447995 res!266292) b!448005))

(assert (= (and b!448005 res!266294) b!448000))

(assert (= (and b!448000 res!266289) b!448003))

(assert (= (and b!448003 res!266290) b!447997))

(assert (= (and b!447997 res!266297) b!448002))

(assert (= (and b!448002 res!266291) b!447994))

(assert (= (and b!447994 res!266287) b!447999))

(assert (= (and b!447999 res!266295) b!448004))

(assert (= (and b!448004 res!266296) b!447993))

(assert (= (and b!447993 res!266288) b!447992))

(assert (= (and b!448006 condMapEmpty!19575) mapIsEmpty!19575))

(assert (= (and b!448006 (not condMapEmpty!19575)) mapNonEmpty!19575))

(get-info :version)

(assert (= (and mapNonEmpty!19575 ((_ is ValueCellFull!5637) mapValue!19575)) b!447996))

(assert (= (and b!448006 ((_ is ValueCellFull!5637) mapDefault!19575)) b!448001))

(assert (= start!40620 b!448006))

(declare-fun m!432665 () Bool)

(assert (=> b!447992 m!432665))

(declare-fun m!432667 () Bool)

(assert (=> b!447992 m!432667))

(declare-fun m!432669 () Bool)

(assert (=> b!447992 m!432669))

(declare-fun m!432671 () Bool)

(assert (=> start!40620 m!432671))

(declare-fun m!432673 () Bool)

(assert (=> start!40620 m!432673))

(declare-fun m!432675 () Bool)

(assert (=> b!447998 m!432675))

(declare-fun m!432677 () Bool)

(assert (=> b!448004 m!432677))

(declare-fun m!432679 () Bool)

(assert (=> b!448002 m!432679))

(declare-fun m!432681 () Bool)

(assert (=> b!447997 m!432681))

(declare-fun m!432683 () Bool)

(assert (=> b!448000 m!432683))

(declare-fun m!432685 () Bool)

(assert (=> mapNonEmpty!19575 m!432685))

(declare-fun m!432687 () Bool)

(assert (=> b!447994 m!432687))

(declare-fun m!432689 () Bool)

(assert (=> b!448005 m!432689))

(declare-fun m!432691 () Bool)

(assert (=> b!447999 m!432691))

(declare-fun m!432693 () Bool)

(assert (=> b!447999 m!432693))

(check-sat (not b!448000) (not b!447992) (not mapNonEmpty!19575) (not b!448005) b_and!18649 (not start!40620) (not b!447998) (not b!447997) (not b!447994) tp_is_empty!11961 (not b!447999) (not b_next!10623) (not b!448004))
(check-sat b_and!18649 (not b_next!10623))
