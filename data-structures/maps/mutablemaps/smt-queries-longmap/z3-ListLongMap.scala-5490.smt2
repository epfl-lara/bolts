; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72754 () Bool)

(assert start!72754)

(declare-fun b!843938 () Bool)

(declare-fun e!471013 () Bool)

(assert (=> b!843938 (= e!471013 false)))

(declare-fun lt!381177 () Bool)

(declare-datatypes ((array!47774 0))(
  ( (array!47775 (arr!22914 (Array (_ BitVec 32) (_ BitVec 64))) (size!23355 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47774)

(declare-datatypes ((List!16328 0))(
  ( (Nil!16325) (Cons!16324 (h!17455 (_ BitVec 64)) (t!22707 List!16328)) )
))
(declare-fun arrayNoDuplicates!0 (array!47774 (_ BitVec 32) List!16328) Bool)

(assert (=> b!843938 (= lt!381177 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16325))))

(declare-fun b!843939 () Bool)

(declare-fun e!471015 () Bool)

(declare-fun e!471012 () Bool)

(declare-fun mapRes!25265 () Bool)

(assert (=> b!843939 (= e!471015 (and e!471012 mapRes!25265))))

(declare-fun condMapEmpty!25265 () Bool)

(declare-datatypes ((V!26083 0))(
  ( (V!26084 (val!7936 Int)) )
))
(declare-datatypes ((ValueCell!7449 0))(
  ( (ValueCellFull!7449 (v!10357 V!26083)) (EmptyCell!7449) )
))
(declare-datatypes ((array!47776 0))(
  ( (array!47777 (arr!22915 (Array (_ BitVec 32) ValueCell!7449)) (size!23356 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47776)

(declare-fun mapDefault!25265 () ValueCell!7449)

(assert (=> b!843939 (= condMapEmpty!25265 (= (arr!22915 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7449)) mapDefault!25265)))))

(declare-fun mapIsEmpty!25265 () Bool)

(assert (=> mapIsEmpty!25265 mapRes!25265))

(declare-fun b!843940 () Bool)

(declare-fun res!573544 () Bool)

(assert (=> b!843940 (=> (not res!573544) (not e!471013))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47774 (_ BitVec 32)) Bool)

(assert (=> b!843940 (= res!573544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843941 () Bool)

(declare-fun e!471011 () Bool)

(declare-fun tp_is_empty!15777 () Bool)

(assert (=> b!843941 (= e!471011 tp_is_empty!15777)))

(declare-fun b!843942 () Bool)

(declare-fun res!573546 () Bool)

(assert (=> b!843942 (=> (not res!573546) (not e!471013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843942 (= res!573546 (validMask!0 mask!1196))))

(declare-fun b!843943 () Bool)

(assert (=> b!843943 (= e!471012 tp_is_empty!15777)))

(declare-fun b!843944 () Bool)

(declare-fun res!573545 () Bool)

(assert (=> b!843944 (=> (not res!573545) (not e!471013))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843944 (= res!573545 (and (= (size!23356 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23355 _keys!868) (size!23356 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25265 () Bool)

(declare-fun tp!48584 () Bool)

(assert (=> mapNonEmpty!25265 (= mapRes!25265 (and tp!48584 e!471011))))

(declare-fun mapValue!25265 () ValueCell!7449)

(declare-fun mapRest!25265 () (Array (_ BitVec 32) ValueCell!7449))

(declare-fun mapKey!25265 () (_ BitVec 32))

(assert (=> mapNonEmpty!25265 (= (arr!22915 _values!688) (store mapRest!25265 mapKey!25265 mapValue!25265))))

(declare-fun res!573543 () Bool)

(assert (=> start!72754 (=> (not res!573543) (not e!471013))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72754 (= res!573543 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23355 _keys!868))))))

(assert (=> start!72754 e!471013))

(assert (=> start!72754 true))

(declare-fun array_inv!18206 (array!47774) Bool)

(assert (=> start!72754 (array_inv!18206 _keys!868)))

(declare-fun array_inv!18207 (array!47776) Bool)

(assert (=> start!72754 (and (array_inv!18207 _values!688) e!471015)))

(assert (= (and start!72754 res!573543) b!843942))

(assert (= (and b!843942 res!573546) b!843944))

(assert (= (and b!843944 res!573545) b!843940))

(assert (= (and b!843940 res!573544) b!843938))

(assert (= (and b!843939 condMapEmpty!25265) mapIsEmpty!25265))

(assert (= (and b!843939 (not condMapEmpty!25265)) mapNonEmpty!25265))

(get-info :version)

(assert (= (and mapNonEmpty!25265 ((_ is ValueCellFull!7449) mapValue!25265)) b!843941))

(assert (= (and b!843939 ((_ is ValueCellFull!7449) mapDefault!25265)) b!843943))

(assert (= start!72754 b!843939))

(declare-fun m!786449 () Bool)

(assert (=> b!843938 m!786449))

(declare-fun m!786451 () Bool)

(assert (=> mapNonEmpty!25265 m!786451))

(declare-fun m!786453 () Bool)

(assert (=> b!843942 m!786453))

(declare-fun m!786455 () Bool)

(assert (=> start!72754 m!786455))

(declare-fun m!786457 () Bool)

(assert (=> start!72754 m!786457))

(declare-fun m!786459 () Bool)

(assert (=> b!843940 m!786459))

(check-sat tp_is_empty!15777 (not start!72754) (not b!843938) (not b!843942) (not mapNonEmpty!25265) (not b!843940))
(check-sat)
