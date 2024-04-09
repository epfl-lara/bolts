; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38930 () Bool)

(assert start!38930)

(declare-fun b!406976 () Bool)

(declare-fun res!235301 () Bool)

(declare-fun e!244468 () Bool)

(assert (=> b!406976 (=> (not res!235301) (not e!244468))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!406976 (= res!235301 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!17133 () Bool)

(declare-fun mapRes!17133 () Bool)

(declare-fun tp!33252 () Bool)

(declare-fun e!244467 () Bool)

(assert (=> mapNonEmpty!17133 (= mapRes!17133 (and tp!33252 e!244467))))

(declare-datatypes ((V!14893 0))(
  ( (V!14894 (val!5215 Int)) )
))
(declare-datatypes ((ValueCell!4827 0))(
  ( (ValueCellFull!4827 (v!7458 V!14893)) (EmptyCell!4827) )
))
(declare-fun mapValue!17133 () ValueCell!4827)

(declare-datatypes ((array!24537 0))(
  ( (array!24538 (arr!11715 (Array (_ BitVec 32) ValueCell!4827)) (size!12067 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24537)

(declare-fun mapKey!17133 () (_ BitVec 32))

(declare-fun mapRest!17133 () (Array (_ BitVec 32) ValueCell!4827))

(assert (=> mapNonEmpty!17133 (= (arr!11715 _values!549) (store mapRest!17133 mapKey!17133 mapValue!17133))))

(declare-fun b!406977 () Bool)

(declare-fun res!235295 () Bool)

(assert (=> b!406977 (=> (not res!235295) (not e!244468))))

(declare-datatypes ((array!24539 0))(
  ( (array!24540 (arr!11716 (Array (_ BitVec 32) (_ BitVec 64))) (size!12068 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24539)

(declare-datatypes ((List!6777 0))(
  ( (Nil!6774) (Cons!6773 (h!7629 (_ BitVec 64)) (t!11959 List!6777)) )
))
(declare-fun arrayNoDuplicates!0 (array!24539 (_ BitVec 32) List!6777) Bool)

(assert (=> b!406977 (= res!235295 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6774))))

(declare-fun b!406978 () Bool)

(declare-fun res!235297 () Bool)

(assert (=> b!406978 (=> (not res!235297) (not e!244468))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!406978 (= res!235297 (or (= (select (arr!11716 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11716 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!235300 () Bool)

(assert (=> start!38930 (=> (not res!235300) (not e!244468))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38930 (= res!235300 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12068 _keys!709))))))

(assert (=> start!38930 e!244468))

(assert (=> start!38930 true))

(declare-fun e!244466 () Bool)

(declare-fun array_inv!8558 (array!24537) Bool)

(assert (=> start!38930 (and (array_inv!8558 _values!549) e!244466)))

(declare-fun array_inv!8559 (array!24539) Bool)

(assert (=> start!38930 (array_inv!8559 _keys!709)))

(declare-fun b!406979 () Bool)

(declare-fun res!235294 () Bool)

(assert (=> b!406979 (=> (not res!235294) (not e!244468))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!406979 (= res!235294 (and (= (size!12067 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12068 _keys!709) (size!12067 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!406980 () Bool)

(declare-fun e!244469 () Bool)

(assert (=> b!406980 (= e!244469 false)))

(declare-fun lt!188565 () Bool)

(declare-fun lt!188564 () array!24539)

(assert (=> b!406980 (= lt!188565 (arrayNoDuplicates!0 lt!188564 #b00000000000000000000000000000000 Nil!6774))))

(declare-fun b!406981 () Bool)

(declare-fun res!235299 () Bool)

(assert (=> b!406981 (=> (not res!235299) (not e!244468))))

(assert (=> b!406981 (= res!235299 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12068 _keys!709))))))

(declare-fun b!406982 () Bool)

(declare-fun res!235302 () Bool)

(assert (=> b!406982 (=> (not res!235302) (not e!244468))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!406982 (= res!235302 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!406983 () Bool)

(declare-fun e!244470 () Bool)

(assert (=> b!406983 (= e!244466 (and e!244470 mapRes!17133))))

(declare-fun condMapEmpty!17133 () Bool)

(declare-fun mapDefault!17133 () ValueCell!4827)

(assert (=> b!406983 (= condMapEmpty!17133 (= (arr!11715 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4827)) mapDefault!17133)))))

(declare-fun b!406984 () Bool)

(assert (=> b!406984 (= e!244468 e!244469)))

(declare-fun res!235298 () Bool)

(assert (=> b!406984 (=> (not res!235298) (not e!244469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24539 (_ BitVec 32)) Bool)

(assert (=> b!406984 (= res!235298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188564 mask!1025))))

(assert (=> b!406984 (= lt!188564 (array!24540 (store (arr!11716 _keys!709) i!563 k0!794) (size!12068 _keys!709)))))

(declare-fun b!406985 () Bool)

(declare-fun tp_is_empty!10341 () Bool)

(assert (=> b!406985 (= e!244470 tp_is_empty!10341)))

(declare-fun b!406986 () Bool)

(assert (=> b!406986 (= e!244467 tp_is_empty!10341)))

(declare-fun b!406987 () Bool)

(declare-fun res!235296 () Bool)

(assert (=> b!406987 (=> (not res!235296) (not e!244468))))

(assert (=> b!406987 (= res!235296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!406988 () Bool)

(declare-fun res!235293 () Bool)

(assert (=> b!406988 (=> (not res!235293) (not e!244468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!406988 (= res!235293 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!17133 () Bool)

(assert (=> mapIsEmpty!17133 mapRes!17133))

(assert (= (and start!38930 res!235300) b!406976))

(assert (= (and b!406976 res!235301) b!406979))

(assert (= (and b!406979 res!235294) b!406987))

(assert (= (and b!406987 res!235296) b!406977))

(assert (= (and b!406977 res!235295) b!406981))

(assert (= (and b!406981 res!235299) b!406988))

(assert (= (and b!406988 res!235293) b!406978))

(assert (= (and b!406978 res!235297) b!406982))

(assert (= (and b!406982 res!235302) b!406984))

(assert (= (and b!406984 res!235298) b!406980))

(assert (= (and b!406983 condMapEmpty!17133) mapIsEmpty!17133))

(assert (= (and b!406983 (not condMapEmpty!17133)) mapNonEmpty!17133))

(get-info :version)

(assert (= (and mapNonEmpty!17133 ((_ is ValueCellFull!4827) mapValue!17133)) b!406986))

(assert (= (and b!406983 ((_ is ValueCellFull!4827) mapDefault!17133)) b!406985))

(assert (= start!38930 b!406983))

(declare-fun m!398805 () Bool)

(assert (=> b!406980 m!398805))

(declare-fun m!398807 () Bool)

(assert (=> b!406982 m!398807))

(declare-fun m!398809 () Bool)

(assert (=> start!38930 m!398809))

(declare-fun m!398811 () Bool)

(assert (=> start!38930 m!398811))

(declare-fun m!398813 () Bool)

(assert (=> b!406984 m!398813))

(declare-fun m!398815 () Bool)

(assert (=> b!406984 m!398815))

(declare-fun m!398817 () Bool)

(assert (=> mapNonEmpty!17133 m!398817))

(declare-fun m!398819 () Bool)

(assert (=> b!406976 m!398819))

(declare-fun m!398821 () Bool)

(assert (=> b!406987 m!398821))

(declare-fun m!398823 () Bool)

(assert (=> b!406988 m!398823))

(declare-fun m!398825 () Bool)

(assert (=> b!406977 m!398825))

(declare-fun m!398827 () Bool)

(assert (=> b!406978 m!398827))

(check-sat tp_is_empty!10341 (not start!38930) (not b!406977) (not b!406980) (not b!406987) (not b!406976) (not mapNonEmpty!17133) (not b!406984) (not b!406988) (not b!406982))
(check-sat)
