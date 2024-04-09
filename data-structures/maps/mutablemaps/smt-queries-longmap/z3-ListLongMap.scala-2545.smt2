; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39098 () Bool)

(assert start!39098)

(declare-fun b_free!9357 () Bool)

(declare-fun b_next!9357 () Bool)

(assert (=> start!39098 (= b_free!9357 (not b_next!9357))))

(declare-fun tp!33600 () Bool)

(declare-fun b_and!16761 () Bool)

(assert (=> start!39098 (= tp!33600 b_and!16761)))

(declare-fun b!410442 () Bool)

(declare-fun e!245983 () Bool)

(declare-fun tp_is_empty!10509 () Bool)

(assert (=> b!410442 (= e!245983 tp_is_empty!10509)))

(declare-fun mapNonEmpty!17385 () Bool)

(declare-fun mapRes!17385 () Bool)

(declare-fun tp!33599 () Bool)

(declare-fun e!245979 () Bool)

(assert (=> mapNonEmpty!17385 (= mapRes!17385 (and tp!33599 e!245979))))

(declare-datatypes ((V!15117 0))(
  ( (V!15118 (val!5299 Int)) )
))
(declare-datatypes ((ValueCell!4911 0))(
  ( (ValueCellFull!4911 (v!7542 V!15117)) (EmptyCell!4911) )
))
(declare-fun mapRest!17385 () (Array (_ BitVec 32) ValueCell!4911))

(declare-datatypes ((array!24867 0))(
  ( (array!24868 (arr!11880 (Array (_ BitVec 32) ValueCell!4911)) (size!12232 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24867)

(declare-fun mapKey!17385 () (_ BitVec 32))

(declare-fun mapValue!17385 () ValueCell!4911)

(assert (=> mapNonEmpty!17385 (= (arr!11880 _values!549) (store mapRest!17385 mapKey!17385 mapValue!17385))))

(declare-fun res!238005 () Bool)

(declare-fun e!245978 () Bool)

(assert (=> start!39098 (=> (not res!238005) (not e!245978))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!24869 0))(
  ( (array!24870 (arr!11881 (Array (_ BitVec 32) (_ BitVec 64))) (size!12233 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24869)

(assert (=> start!39098 (= res!238005 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12233 _keys!709))))))

(assert (=> start!39098 e!245978))

(assert (=> start!39098 tp_is_empty!10509))

(assert (=> start!39098 tp!33600))

(assert (=> start!39098 true))

(declare-fun e!245982 () Bool)

(declare-fun array_inv!8674 (array!24867) Bool)

(assert (=> start!39098 (and (array_inv!8674 _values!549) e!245982)))

(declare-fun array_inv!8675 (array!24869) Bool)

(assert (=> start!39098 (array_inv!8675 _keys!709)))

(declare-fun b!410443 () Bool)

(declare-fun e!245981 () Bool)

(assert (=> b!410443 (= e!245981 false)))

(declare-fun minValue!515 () V!15117)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189083 () array!24869)

(declare-datatypes ((tuple2!6810 0))(
  ( (tuple2!6811 (_1!3415 (_ BitVec 64)) (_2!3415 V!15117)) )
))
(declare-datatypes ((List!6863 0))(
  ( (Nil!6860) (Cons!6859 (h!7715 tuple2!6810) (t!12045 List!6863)) )
))
(declare-datatypes ((ListLongMap!5737 0))(
  ( (ListLongMap!5738 (toList!2884 List!6863)) )
))
(declare-fun lt!189082 () ListLongMap!5737)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!15117)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15117)

(declare-fun getCurrentListMapNoExtraKeys!1094 (array!24869 array!24867 (_ BitVec 32) (_ BitVec 32) V!15117 V!15117 (_ BitVec 32) Int) ListLongMap!5737)

(assert (=> b!410443 (= lt!189082 (getCurrentListMapNoExtraKeys!1094 lt!189083 (array!24868 (store (arr!11880 _values!549) i!563 (ValueCellFull!4911 v!412)) (size!12232 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189084 () ListLongMap!5737)

(assert (=> b!410443 (= lt!189084 (getCurrentListMapNoExtraKeys!1094 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410444 () Bool)

(declare-fun res!238004 () Bool)

(assert (=> b!410444 (=> (not res!238004) (not e!245978))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410444 (= res!238004 (validKeyInArray!0 k0!794))))

(declare-fun b!410445 () Bool)

(declare-fun res!238013 () Bool)

(assert (=> b!410445 (=> (not res!238013) (not e!245981))))

(declare-datatypes ((List!6864 0))(
  ( (Nil!6861) (Cons!6860 (h!7716 (_ BitVec 64)) (t!12046 List!6864)) )
))
(declare-fun arrayNoDuplicates!0 (array!24869 (_ BitVec 32) List!6864) Bool)

(assert (=> b!410445 (= res!238013 (arrayNoDuplicates!0 lt!189083 #b00000000000000000000000000000000 Nil!6861))))

(declare-fun b!410446 () Bool)

(declare-fun res!238008 () Bool)

(assert (=> b!410446 (=> (not res!238008) (not e!245978))))

(assert (=> b!410446 (= res!238008 (and (= (size!12232 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12233 _keys!709) (size!12232 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410447 () Bool)

(declare-fun res!238012 () Bool)

(assert (=> b!410447 (=> (not res!238012) (not e!245978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24869 (_ BitVec 32)) Bool)

(assert (=> b!410447 (= res!238012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410448 () Bool)

(declare-fun res!238003 () Bool)

(assert (=> b!410448 (=> (not res!238003) (not e!245978))))

(assert (=> b!410448 (= res!238003 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6861))))

(declare-fun b!410449 () Bool)

(declare-fun res!238014 () Bool)

(assert (=> b!410449 (=> (not res!238014) (not e!245978))))

(assert (=> b!410449 (= res!238014 (or (= (select (arr!11881 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11881 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410450 () Bool)

(declare-fun res!238007 () Bool)

(assert (=> b!410450 (=> (not res!238007) (not e!245978))))

(declare-fun arrayContainsKey!0 (array!24869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410450 (= res!238007 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!410451 () Bool)

(declare-fun res!238011 () Bool)

(assert (=> b!410451 (=> (not res!238011) (not e!245978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410451 (= res!238011 (validMask!0 mask!1025))))

(declare-fun b!410452 () Bool)

(assert (=> b!410452 (= e!245982 (and e!245983 mapRes!17385))))

(declare-fun condMapEmpty!17385 () Bool)

(declare-fun mapDefault!17385 () ValueCell!4911)

(assert (=> b!410452 (= condMapEmpty!17385 (= (arr!11880 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4911)) mapDefault!17385)))))

(declare-fun mapIsEmpty!17385 () Bool)

(assert (=> mapIsEmpty!17385 mapRes!17385))

(declare-fun b!410453 () Bool)

(assert (=> b!410453 (= e!245978 e!245981)))

(declare-fun res!238009 () Bool)

(assert (=> b!410453 (=> (not res!238009) (not e!245981))))

(assert (=> b!410453 (= res!238009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189083 mask!1025))))

(assert (=> b!410453 (= lt!189083 (array!24870 (store (arr!11881 _keys!709) i!563 k0!794) (size!12233 _keys!709)))))

(declare-fun b!410454 () Bool)

(declare-fun res!238006 () Bool)

(assert (=> b!410454 (=> (not res!238006) (not e!245978))))

(assert (=> b!410454 (= res!238006 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12233 _keys!709))))))

(declare-fun b!410455 () Bool)

(assert (=> b!410455 (= e!245979 tp_is_empty!10509)))

(declare-fun b!410456 () Bool)

(declare-fun res!238010 () Bool)

(assert (=> b!410456 (=> (not res!238010) (not e!245981))))

(assert (=> b!410456 (= res!238010 (bvsle from!863 i!563))))

(assert (= (and start!39098 res!238005) b!410451))

(assert (= (and b!410451 res!238011) b!410446))

(assert (= (and b!410446 res!238008) b!410447))

(assert (= (and b!410447 res!238012) b!410448))

(assert (= (and b!410448 res!238003) b!410454))

(assert (= (and b!410454 res!238006) b!410444))

(assert (= (and b!410444 res!238004) b!410449))

(assert (= (and b!410449 res!238014) b!410450))

(assert (= (and b!410450 res!238007) b!410453))

(assert (= (and b!410453 res!238009) b!410445))

(assert (= (and b!410445 res!238013) b!410456))

(assert (= (and b!410456 res!238010) b!410443))

(assert (= (and b!410452 condMapEmpty!17385) mapIsEmpty!17385))

(assert (= (and b!410452 (not condMapEmpty!17385)) mapNonEmpty!17385))

(get-info :version)

(assert (= (and mapNonEmpty!17385 ((_ is ValueCellFull!4911) mapValue!17385)) b!410455))

(assert (= (and b!410452 ((_ is ValueCellFull!4911) mapDefault!17385)) b!410442))

(assert (= start!39098 b!410452))

(declare-fun m!400899 () Bool)

(assert (=> b!410447 m!400899))

(declare-fun m!400901 () Bool)

(assert (=> b!410444 m!400901))

(declare-fun m!400903 () Bool)

(assert (=> b!410448 m!400903))

(declare-fun m!400905 () Bool)

(assert (=> b!410450 m!400905))

(declare-fun m!400907 () Bool)

(assert (=> b!410453 m!400907))

(declare-fun m!400909 () Bool)

(assert (=> b!410453 m!400909))

(declare-fun m!400911 () Bool)

(assert (=> b!410445 m!400911))

(declare-fun m!400913 () Bool)

(assert (=> b!410451 m!400913))

(declare-fun m!400915 () Bool)

(assert (=> b!410449 m!400915))

(declare-fun m!400917 () Bool)

(assert (=> mapNonEmpty!17385 m!400917))

(declare-fun m!400919 () Bool)

(assert (=> b!410443 m!400919))

(declare-fun m!400921 () Bool)

(assert (=> b!410443 m!400921))

(declare-fun m!400923 () Bool)

(assert (=> b!410443 m!400923))

(declare-fun m!400925 () Bool)

(assert (=> start!39098 m!400925))

(declare-fun m!400927 () Bool)

(assert (=> start!39098 m!400927))

(check-sat b_and!16761 (not b!410443) (not b!410450) (not start!39098) (not b_next!9357) (not mapNonEmpty!17385) (not b!410451) (not b!410445) (not b!410448) (not b!410447) (not b!410444) tp_is_empty!10509 (not b!410453))
(check-sat b_and!16761 (not b_next!9357))
