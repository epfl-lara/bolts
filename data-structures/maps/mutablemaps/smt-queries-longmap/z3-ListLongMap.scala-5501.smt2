; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72820 () Bool)

(assert start!72820)

(declare-fun b!844631 () Bool)

(declare-fun e!471507 () Bool)

(declare-fun e!471506 () Bool)

(declare-fun mapRes!25364 () Bool)

(assert (=> b!844631 (= e!471507 (and e!471506 mapRes!25364))))

(declare-fun condMapEmpty!25364 () Bool)

(declare-datatypes ((V!26171 0))(
  ( (V!26172 (val!7969 Int)) )
))
(declare-datatypes ((ValueCell!7482 0))(
  ( (ValueCellFull!7482 (v!10390 V!26171)) (EmptyCell!7482) )
))
(declare-datatypes ((array!47900 0))(
  ( (array!47901 (arr!22977 (Array (_ BitVec 32) ValueCell!7482)) (size!23418 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47900)

(declare-fun mapDefault!25364 () ValueCell!7482)

(assert (=> b!844631 (= condMapEmpty!25364 (= (arr!22977 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7482)) mapDefault!25364)))))

(declare-fun b!844632 () Bool)

(declare-fun e!471508 () Bool)

(declare-fun tp_is_empty!15843 () Bool)

(assert (=> b!844632 (= e!471508 tp_is_empty!15843)))

(declare-fun b!844633 () Bool)

(declare-fun res!573939 () Bool)

(declare-fun e!471510 () Bool)

(assert (=> b!844633 (=> (not res!573939) (not e!471510))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844633 (= res!573939 (validMask!0 mask!1196))))

(declare-fun b!844634 () Bool)

(declare-fun res!573942 () Bool)

(assert (=> b!844634 (=> (not res!573942) (not e!471510))))

(declare-datatypes ((array!47902 0))(
  ( (array!47903 (arr!22978 (Array (_ BitVec 32) (_ BitVec 64))) (size!23419 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47902)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47902 (_ BitVec 32)) Bool)

(assert (=> b!844634 (= res!573942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844635 () Bool)

(assert (=> b!844635 (= e!471506 tp_is_empty!15843)))

(declare-fun res!573941 () Bool)

(assert (=> start!72820 (=> (not res!573941) (not e!471510))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72820 (= res!573941 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23419 _keys!868))))))

(assert (=> start!72820 e!471510))

(assert (=> start!72820 true))

(declare-fun array_inv!18252 (array!47902) Bool)

(assert (=> start!72820 (array_inv!18252 _keys!868)))

(declare-fun array_inv!18253 (array!47900) Bool)

(assert (=> start!72820 (and (array_inv!18253 _values!688) e!471507)))

(declare-fun b!844636 () Bool)

(declare-fun res!573940 () Bool)

(assert (=> b!844636 (=> (not res!573940) (not e!471510))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844636 (= res!573940 (and (= (size!23418 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23419 _keys!868) (size!23418 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25364 () Bool)

(declare-fun tp!48683 () Bool)

(assert (=> mapNonEmpty!25364 (= mapRes!25364 (and tp!48683 e!471508))))

(declare-fun mapKey!25364 () (_ BitVec 32))

(declare-fun mapRest!25364 () (Array (_ BitVec 32) ValueCell!7482))

(declare-fun mapValue!25364 () ValueCell!7482)

(assert (=> mapNonEmpty!25364 (= (arr!22977 _values!688) (store mapRest!25364 mapKey!25364 mapValue!25364))))

(declare-fun b!844637 () Bool)

(assert (=> b!844637 (= e!471510 false)))

(declare-fun lt!381276 () Bool)

(declare-datatypes ((List!16351 0))(
  ( (Nil!16348) (Cons!16347 (h!17478 (_ BitVec 64)) (t!22730 List!16351)) )
))
(declare-fun arrayNoDuplicates!0 (array!47902 (_ BitVec 32) List!16351) Bool)

(assert (=> b!844637 (= lt!381276 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16348))))

(declare-fun mapIsEmpty!25364 () Bool)

(assert (=> mapIsEmpty!25364 mapRes!25364))

(assert (= (and start!72820 res!573941) b!844633))

(assert (= (and b!844633 res!573939) b!844636))

(assert (= (and b!844636 res!573940) b!844634))

(assert (= (and b!844634 res!573942) b!844637))

(assert (= (and b!844631 condMapEmpty!25364) mapIsEmpty!25364))

(assert (= (and b!844631 (not condMapEmpty!25364)) mapNonEmpty!25364))

(get-info :version)

(assert (= (and mapNonEmpty!25364 ((_ is ValueCellFull!7482) mapValue!25364)) b!844632))

(assert (= (and b!844631 ((_ is ValueCellFull!7482) mapDefault!25364)) b!844635))

(assert (= start!72820 b!844631))

(declare-fun m!786845 () Bool)

(assert (=> b!844633 m!786845))

(declare-fun m!786847 () Bool)

(assert (=> b!844637 m!786847))

(declare-fun m!786849 () Bool)

(assert (=> start!72820 m!786849))

(declare-fun m!786851 () Bool)

(assert (=> start!72820 m!786851))

(declare-fun m!786853 () Bool)

(assert (=> b!844634 m!786853))

(declare-fun m!786855 () Bool)

(assert (=> mapNonEmpty!25364 m!786855))

(check-sat (not b!844633) (not b!844634) tp_is_empty!15843 (not mapNonEmpty!25364) (not start!72820) (not b!844637))
(check-sat)
