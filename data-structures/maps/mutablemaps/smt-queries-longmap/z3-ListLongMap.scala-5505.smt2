; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72844 () Bool)

(assert start!72844)

(declare-fun b!844883 () Bool)

(declare-fun e!471690 () Bool)

(declare-fun e!471686 () Bool)

(declare-fun mapRes!25400 () Bool)

(assert (=> b!844883 (= e!471690 (and e!471686 mapRes!25400))))

(declare-fun condMapEmpty!25400 () Bool)

(declare-datatypes ((V!26203 0))(
  ( (V!26204 (val!7981 Int)) )
))
(declare-datatypes ((ValueCell!7494 0))(
  ( (ValueCellFull!7494 (v!10402 V!26203)) (EmptyCell!7494) )
))
(declare-datatypes ((array!47942 0))(
  ( (array!47943 (arr!22998 (Array (_ BitVec 32) ValueCell!7494)) (size!23439 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47942)

(declare-fun mapDefault!25400 () ValueCell!7494)

(assert (=> b!844883 (= condMapEmpty!25400 (= (arr!22998 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7494)) mapDefault!25400)))))

(declare-fun mapNonEmpty!25400 () Bool)

(declare-fun tp!48719 () Bool)

(declare-fun e!471687 () Bool)

(assert (=> mapNonEmpty!25400 (= mapRes!25400 (and tp!48719 e!471687))))

(declare-fun mapRest!25400 () (Array (_ BitVec 32) ValueCell!7494))

(declare-fun mapKey!25400 () (_ BitVec 32))

(declare-fun mapValue!25400 () ValueCell!7494)

(assert (=> mapNonEmpty!25400 (= (arr!22998 _values!688) (store mapRest!25400 mapKey!25400 mapValue!25400))))

(declare-fun b!844884 () Bool)

(declare-fun tp_is_empty!15867 () Bool)

(assert (=> b!844884 (= e!471687 tp_is_empty!15867)))

(declare-fun b!844885 () Bool)

(declare-fun res!574085 () Bool)

(declare-fun e!471689 () Bool)

(assert (=> b!844885 (=> (not res!574085) (not e!471689))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844885 (= res!574085 (validMask!0 mask!1196))))

(declare-fun b!844886 () Bool)

(declare-fun res!574083 () Bool)

(assert (=> b!844886 (=> (not res!574083) (not e!471689))))

(declare-datatypes ((array!47944 0))(
  ( (array!47945 (arr!22999 (Array (_ BitVec 32) (_ BitVec 64))) (size!23440 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47944)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47944 (_ BitVec 32)) Bool)

(assert (=> b!844886 (= res!574083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!574086 () Bool)

(assert (=> start!72844 (=> (not res!574086) (not e!471689))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72844 (= res!574086 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23440 _keys!868))))))

(assert (=> start!72844 e!471689))

(assert (=> start!72844 true))

(declare-fun array_inv!18264 (array!47944) Bool)

(assert (=> start!72844 (array_inv!18264 _keys!868)))

(declare-fun array_inv!18265 (array!47942) Bool)

(assert (=> start!72844 (and (array_inv!18265 _values!688) e!471690)))

(declare-fun b!844887 () Bool)

(assert (=> b!844887 (= e!471686 tp_is_empty!15867)))

(declare-fun mapIsEmpty!25400 () Bool)

(assert (=> mapIsEmpty!25400 mapRes!25400))

(declare-fun b!844888 () Bool)

(assert (=> b!844888 (= e!471689 false)))

(declare-fun lt!381312 () Bool)

(declare-datatypes ((List!16356 0))(
  ( (Nil!16353) (Cons!16352 (h!17483 (_ BitVec 64)) (t!22735 List!16356)) )
))
(declare-fun arrayNoDuplicates!0 (array!47944 (_ BitVec 32) List!16356) Bool)

(assert (=> b!844888 (= lt!381312 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16353))))

(declare-fun b!844889 () Bool)

(declare-fun res!574084 () Bool)

(assert (=> b!844889 (=> (not res!574084) (not e!471689))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844889 (= res!574084 (and (= (size!23439 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23440 _keys!868) (size!23439 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72844 res!574086) b!844885))

(assert (= (and b!844885 res!574085) b!844889))

(assert (= (and b!844889 res!574084) b!844886))

(assert (= (and b!844886 res!574083) b!844888))

(assert (= (and b!844883 condMapEmpty!25400) mapIsEmpty!25400))

(assert (= (and b!844883 (not condMapEmpty!25400)) mapNonEmpty!25400))

(get-info :version)

(assert (= (and mapNonEmpty!25400 ((_ is ValueCellFull!7494) mapValue!25400)) b!844884))

(assert (= (and b!844883 ((_ is ValueCellFull!7494) mapDefault!25400)) b!844887))

(assert (= start!72844 b!844883))

(declare-fun m!786989 () Bool)

(assert (=> b!844885 m!786989))

(declare-fun m!786991 () Bool)

(assert (=> b!844886 m!786991))

(declare-fun m!786993 () Bool)

(assert (=> start!72844 m!786993))

(declare-fun m!786995 () Bool)

(assert (=> start!72844 m!786995))

(declare-fun m!786997 () Bool)

(assert (=> mapNonEmpty!25400 m!786997))

(declare-fun m!786999 () Bool)

(assert (=> b!844888 m!786999))

(check-sat (not start!72844) (not b!844886) (not b!844885) (not b!844888) tp_is_empty!15867 (not mapNonEmpty!25400))
(check-sat)
