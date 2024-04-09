; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40924 () Bool)

(assert start!40924)

(declare-fun b_free!10851 () Bool)

(declare-fun b_next!10851 () Bool)

(assert (=> start!40924 (= b_free!10851 (not b_next!10851))))

(declare-fun tp!38380 () Bool)

(declare-fun b_and!19011 () Bool)

(assert (=> start!40924 (= tp!38380 b_and!19011)))

(declare-fun b!454577 () Bool)

(declare-fun res!270995 () Bool)

(declare-fun e!265906 () Bool)

(assert (=> b!454577 (=> (not res!270995) (not e!265906))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454577 (= res!270995 (bvsle from!863 i!563))))

(declare-fun b!454578 () Bool)

(declare-fun res!270992 () Bool)

(declare-fun e!265905 () Bool)

(assert (=> b!454578 (=> (not res!270992) (not e!265905))))

(declare-datatypes ((array!28147 0))(
  ( (array!28148 (arr!13514 (Array (_ BitVec 32) (_ BitVec 64))) (size!13866 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28147)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28147 (_ BitVec 32)) Bool)

(assert (=> b!454578 (= res!270992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454579 () Bool)

(declare-fun res!270988 () Bool)

(assert (=> b!454579 (=> (not res!270988) (not e!265905))))

(assert (=> b!454579 (= res!270988 (or (= (select (arr!13514 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13514 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!454580 () Bool)

(declare-fun res!270990 () Bool)

(assert (=> b!454580 (=> (not res!270990) (not e!265905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454580 (= res!270990 (validMask!0 mask!1025))))

(declare-fun b!454581 () Bool)

(declare-fun e!265908 () Bool)

(declare-fun tp_is_empty!12189 () Bool)

(assert (=> b!454581 (= e!265908 tp_is_empty!12189)))

(declare-fun b!454582 () Bool)

(declare-fun e!265909 () Bool)

(assert (=> b!454582 (= e!265909 tp_is_empty!12189)))

(declare-fun b!454583 () Bool)

(declare-fun e!265907 () Bool)

(declare-fun mapRes!19924 () Bool)

(assert (=> b!454583 (= e!265907 (and e!265909 mapRes!19924))))

(declare-fun condMapEmpty!19924 () Bool)

(declare-datatypes ((V!17357 0))(
  ( (V!17358 (val!6139 Int)) )
))
(declare-datatypes ((ValueCell!5751 0))(
  ( (ValueCellFull!5751 (v!8401 V!17357)) (EmptyCell!5751) )
))
(declare-datatypes ((array!28149 0))(
  ( (array!28150 (arr!13515 (Array (_ BitVec 32) ValueCell!5751)) (size!13867 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28149)

(declare-fun mapDefault!19924 () ValueCell!5751)

(assert (=> b!454583 (= condMapEmpty!19924 (= (arr!13515 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5751)) mapDefault!19924)))))

(declare-fun mapIsEmpty!19924 () Bool)

(assert (=> mapIsEmpty!19924 mapRes!19924))

(declare-fun b!454584 () Bool)

(declare-fun res!270994 () Bool)

(assert (=> b!454584 (=> (not res!270994) (not e!265905))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!454584 (= res!270994 (and (= (size!13867 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13866 _keys!709) (size!13867 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454585 () Bool)

(declare-fun res!270997 () Bool)

(assert (=> b!454585 (=> (not res!270997) (not e!265905))))

(assert (=> b!454585 (= res!270997 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13866 _keys!709))))))

(declare-fun b!454586 () Bool)

(assert (=> b!454586 (= e!265906 false)))

(declare-fun minValue!515 () V!17357)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!206164 () array!28147)

(declare-fun zeroValue!515 () V!17357)

(declare-fun v!412 () V!17357)

(declare-datatypes ((tuple2!8034 0))(
  ( (tuple2!8035 (_1!4027 (_ BitVec 64)) (_2!4027 V!17357)) )
))
(declare-datatypes ((List!8140 0))(
  ( (Nil!8137) (Cons!8136 (h!8992 tuple2!8034) (t!13976 List!8140)) )
))
(declare-datatypes ((ListLongMap!6961 0))(
  ( (ListLongMap!6962 (toList!3496 List!8140)) )
))
(declare-fun lt!206165 () ListLongMap!6961)

(declare-fun getCurrentListMapNoExtraKeys!1672 (array!28147 array!28149 (_ BitVec 32) (_ BitVec 32) V!17357 V!17357 (_ BitVec 32) Int) ListLongMap!6961)

(assert (=> b!454586 (= lt!206165 (getCurrentListMapNoExtraKeys!1672 lt!206164 (array!28150 (store (arr!13515 _values!549) i!563 (ValueCellFull!5751 v!412)) (size!13867 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206166 () ListLongMap!6961)

(assert (=> b!454586 (= lt!206166 (getCurrentListMapNoExtraKeys!1672 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19924 () Bool)

(declare-fun tp!38379 () Bool)

(assert (=> mapNonEmpty!19924 (= mapRes!19924 (and tp!38379 e!265908))))

(declare-fun mapKey!19924 () (_ BitVec 32))

(declare-fun mapValue!19924 () ValueCell!5751)

(declare-fun mapRest!19924 () (Array (_ BitVec 32) ValueCell!5751))

(assert (=> mapNonEmpty!19924 (= (arr!13515 _values!549) (store mapRest!19924 mapKey!19924 mapValue!19924))))

(declare-fun b!454587 () Bool)

(assert (=> b!454587 (= e!265905 e!265906)))

(declare-fun res!270993 () Bool)

(assert (=> b!454587 (=> (not res!270993) (not e!265906))))

(assert (=> b!454587 (= res!270993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206164 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!454587 (= lt!206164 (array!28148 (store (arr!13514 _keys!709) i!563 k0!794) (size!13866 _keys!709)))))

(declare-fun b!454588 () Bool)

(declare-fun res!270987 () Bool)

(assert (=> b!454588 (=> (not res!270987) (not e!265906))))

(declare-datatypes ((List!8141 0))(
  ( (Nil!8138) (Cons!8137 (h!8993 (_ BitVec 64)) (t!13977 List!8141)) )
))
(declare-fun arrayNoDuplicates!0 (array!28147 (_ BitVec 32) List!8141) Bool)

(assert (=> b!454588 (= res!270987 (arrayNoDuplicates!0 lt!206164 #b00000000000000000000000000000000 Nil!8138))))

(declare-fun b!454589 () Bool)

(declare-fun res!270996 () Bool)

(assert (=> b!454589 (=> (not res!270996) (not e!265905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454589 (= res!270996 (validKeyInArray!0 k0!794))))

(declare-fun res!270991 () Bool)

(assert (=> start!40924 (=> (not res!270991) (not e!265905))))

(assert (=> start!40924 (= res!270991 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13866 _keys!709))))))

(assert (=> start!40924 e!265905))

(assert (=> start!40924 tp_is_empty!12189))

(assert (=> start!40924 tp!38380))

(assert (=> start!40924 true))

(declare-fun array_inv!9784 (array!28149) Bool)

(assert (=> start!40924 (and (array_inv!9784 _values!549) e!265907)))

(declare-fun array_inv!9785 (array!28147) Bool)

(assert (=> start!40924 (array_inv!9785 _keys!709)))

(declare-fun b!454590 () Bool)

(declare-fun res!270998 () Bool)

(assert (=> b!454590 (=> (not res!270998) (not e!265905))))

(declare-fun arrayContainsKey!0 (array!28147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454590 (= res!270998 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!454591 () Bool)

(declare-fun res!270989 () Bool)

(assert (=> b!454591 (=> (not res!270989) (not e!265905))))

(assert (=> b!454591 (= res!270989 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8138))))

(assert (= (and start!40924 res!270991) b!454580))

(assert (= (and b!454580 res!270990) b!454584))

(assert (= (and b!454584 res!270994) b!454578))

(assert (= (and b!454578 res!270992) b!454591))

(assert (= (and b!454591 res!270989) b!454585))

(assert (= (and b!454585 res!270997) b!454589))

(assert (= (and b!454589 res!270996) b!454579))

(assert (= (and b!454579 res!270988) b!454590))

(assert (= (and b!454590 res!270998) b!454587))

(assert (= (and b!454587 res!270993) b!454588))

(assert (= (and b!454588 res!270987) b!454577))

(assert (= (and b!454577 res!270995) b!454586))

(assert (= (and b!454583 condMapEmpty!19924) mapIsEmpty!19924))

(assert (= (and b!454583 (not condMapEmpty!19924)) mapNonEmpty!19924))

(get-info :version)

(assert (= (and mapNonEmpty!19924 ((_ is ValueCellFull!5751) mapValue!19924)) b!454581))

(assert (= (and b!454583 ((_ is ValueCellFull!5751) mapDefault!19924)) b!454582))

(assert (= start!40924 b!454583))

(declare-fun m!438621 () Bool)

(assert (=> b!454588 m!438621))

(declare-fun m!438623 () Bool)

(assert (=> b!454591 m!438623))

(declare-fun m!438625 () Bool)

(assert (=> b!454586 m!438625))

(declare-fun m!438627 () Bool)

(assert (=> b!454586 m!438627))

(declare-fun m!438629 () Bool)

(assert (=> b!454586 m!438629))

(declare-fun m!438631 () Bool)

(assert (=> b!454589 m!438631))

(declare-fun m!438633 () Bool)

(assert (=> b!454580 m!438633))

(declare-fun m!438635 () Bool)

(assert (=> mapNonEmpty!19924 m!438635))

(declare-fun m!438637 () Bool)

(assert (=> b!454578 m!438637))

(declare-fun m!438639 () Bool)

(assert (=> b!454590 m!438639))

(declare-fun m!438641 () Bool)

(assert (=> b!454587 m!438641))

(declare-fun m!438643 () Bool)

(assert (=> b!454587 m!438643))

(declare-fun m!438645 () Bool)

(assert (=> start!40924 m!438645))

(declare-fun m!438647 () Bool)

(assert (=> start!40924 m!438647))

(declare-fun m!438649 () Bool)

(assert (=> b!454579 m!438649))

(check-sat (not b!454591) (not b!454580) (not b!454588) b_and!19011 tp_is_empty!12189 (not b!454587) (not start!40924) (not b!454590) (not mapNonEmpty!19924) (not b!454578) (not b_next!10851) (not b!454586) (not b!454589))
(check-sat b_and!19011 (not b_next!10851))
