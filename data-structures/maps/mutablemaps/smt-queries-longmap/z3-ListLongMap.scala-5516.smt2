; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72910 () Bool)

(assert start!72910)

(declare-fun b_free!13797 () Bool)

(declare-fun b_next!13797 () Bool)

(assert (=> start!72910 (= b_free!13797 (not b_next!13797))))

(declare-fun tp!48896 () Bool)

(declare-fun b_and!22901 () Bool)

(assert (=> start!72910 (= tp!48896 b_and!22901)))

(declare-fun b!845884 () Bool)

(declare-fun res!574788 () Bool)

(declare-fun e!472183 () Bool)

(assert (=> b!845884 (=> (not res!574788) (not e!472183))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845884 (= res!574788 (validKeyInArray!0 k0!854))))

(declare-fun b!845885 () Bool)

(declare-fun res!574790 () Bool)

(assert (=> b!845885 (=> (not res!574790) (not e!472183))))

(declare-datatypes ((array!48066 0))(
  ( (array!48067 (arr!23060 (Array (_ BitVec 32) (_ BitVec 64))) (size!23501 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48066)

(declare-datatypes ((List!16397 0))(
  ( (Nil!16394) (Cons!16393 (h!17524 (_ BitVec 64)) (t!22776 List!16397)) )
))
(declare-fun arrayNoDuplicates!0 (array!48066 (_ BitVec 32) List!16397) Bool)

(assert (=> b!845885 (= res!574790 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16394))))

(declare-fun b!845886 () Bool)

(declare-fun res!574787 () Bool)

(assert (=> b!845886 (=> (not res!574787) (not e!472183))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!845886 (= res!574787 (and (= (select (arr!23060 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!845887 () Bool)

(declare-fun e!472185 () Bool)

(declare-fun tp_is_empty!15933 () Bool)

(assert (=> b!845887 (= e!472185 tp_is_empty!15933)))

(declare-fun res!574791 () Bool)

(assert (=> start!72910 (=> (not res!574791) (not e!472183))))

(assert (=> start!72910 (= res!574791 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23501 _keys!868))))))

(assert (=> start!72910 e!472183))

(assert (=> start!72910 true))

(assert (=> start!72910 tp!48896))

(declare-fun array_inv!18304 (array!48066) Bool)

(assert (=> start!72910 (array_inv!18304 _keys!868)))

(declare-datatypes ((V!26291 0))(
  ( (V!26292 (val!8014 Int)) )
))
(declare-datatypes ((ValueCell!7527 0))(
  ( (ValueCellFull!7527 (v!10435 V!26291)) (EmptyCell!7527) )
))
(declare-datatypes ((array!48068 0))(
  ( (array!48069 (arr!23061 (Array (_ BitVec 32) ValueCell!7527)) (size!23502 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48068)

(declare-fun e!472184 () Bool)

(declare-fun array_inv!18305 (array!48068) Bool)

(assert (=> start!72910 (and (array_inv!18305 _values!688) e!472184)))

(assert (=> start!72910 tp_is_empty!15933))

(declare-fun mapIsEmpty!25499 () Bool)

(declare-fun mapRes!25499 () Bool)

(assert (=> mapIsEmpty!25499 mapRes!25499))

(declare-fun b!845888 () Bool)

(declare-fun res!574789 () Bool)

(assert (=> b!845888 (=> (not res!574789) (not e!472183))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845888 (= res!574789 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25499 () Bool)

(declare-fun tp!48895 () Bool)

(declare-fun e!472181 () Bool)

(assert (=> mapNonEmpty!25499 (= mapRes!25499 (and tp!48895 e!472181))))

(declare-fun mapValue!25499 () ValueCell!7527)

(declare-fun mapKey!25499 () (_ BitVec 32))

(declare-fun mapRest!25499 () (Array (_ BitVec 32) ValueCell!7527))

(assert (=> mapNonEmpty!25499 (= (arr!23061 _values!688) (store mapRest!25499 mapKey!25499 mapValue!25499))))

(declare-fun b!845889 () Bool)

(declare-fun res!574794 () Bool)

(assert (=> b!845889 (=> (not res!574794) (not e!472183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48066 (_ BitVec 32)) Bool)

(assert (=> b!845889 (= res!574794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845890 () Bool)

(assert (=> b!845890 (= e!472183 false)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10486 0))(
  ( (tuple2!10487 (_1!5253 (_ BitVec 64)) (_2!5253 V!26291)) )
))
(declare-datatypes ((List!16398 0))(
  ( (Nil!16395) (Cons!16394 (h!17525 tuple2!10486) (t!22777 List!16398)) )
))
(declare-datatypes ((ListLongMap!9269 0))(
  ( (ListLongMap!9270 (toList!4650 List!16398)) )
))
(declare-fun lt!381411 () ListLongMap!9269)

(declare-fun minValue!654 () V!26291)

(declare-fun zeroValue!654 () V!26291)

(declare-fun getCurrentListMapNoExtraKeys!2639 (array!48066 array!48068 (_ BitVec 32) (_ BitVec 32) V!26291 V!26291 (_ BitVec 32) Int) ListLongMap!9269)

(assert (=> b!845890 (= lt!381411 (getCurrentListMapNoExtraKeys!2639 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845891 () Bool)

(declare-fun res!574792 () Bool)

(assert (=> b!845891 (=> (not res!574792) (not e!472183))))

(assert (=> b!845891 (= res!574792 (and (= (size!23502 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23501 _keys!868) (size!23502 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845892 () Bool)

(declare-fun res!574793 () Bool)

(assert (=> b!845892 (=> (not res!574793) (not e!472183))))

(assert (=> b!845892 (= res!574793 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23501 _keys!868))))))

(declare-fun b!845893 () Bool)

(assert (=> b!845893 (= e!472184 (and e!472185 mapRes!25499))))

(declare-fun condMapEmpty!25499 () Bool)

(declare-fun mapDefault!25499 () ValueCell!7527)

(assert (=> b!845893 (= condMapEmpty!25499 (= (arr!23061 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7527)) mapDefault!25499)))))

(declare-fun b!845894 () Bool)

(assert (=> b!845894 (= e!472181 tp_is_empty!15933)))

(assert (= (and start!72910 res!574791) b!845888))

(assert (= (and b!845888 res!574789) b!845891))

(assert (= (and b!845891 res!574792) b!845889))

(assert (= (and b!845889 res!574794) b!845885))

(assert (= (and b!845885 res!574790) b!845892))

(assert (= (and b!845892 res!574793) b!845884))

(assert (= (and b!845884 res!574788) b!845886))

(assert (= (and b!845886 res!574787) b!845890))

(assert (= (and b!845893 condMapEmpty!25499) mapIsEmpty!25499))

(assert (= (and b!845893 (not condMapEmpty!25499)) mapNonEmpty!25499))

(get-info :version)

(assert (= (and mapNonEmpty!25499 ((_ is ValueCellFull!7527) mapValue!25499)) b!845894))

(assert (= (and b!845893 ((_ is ValueCellFull!7527) mapDefault!25499)) b!845887))

(assert (= start!72910 b!845893))

(declare-fun m!787535 () Bool)

(assert (=> b!845890 m!787535))

(declare-fun m!787537 () Bool)

(assert (=> b!845886 m!787537))

(declare-fun m!787539 () Bool)

(assert (=> mapNonEmpty!25499 m!787539))

(declare-fun m!787541 () Bool)

(assert (=> b!845885 m!787541))

(declare-fun m!787543 () Bool)

(assert (=> b!845884 m!787543))

(declare-fun m!787545 () Bool)

(assert (=> b!845888 m!787545))

(declare-fun m!787547 () Bool)

(assert (=> start!72910 m!787547))

(declare-fun m!787549 () Bool)

(assert (=> start!72910 m!787549))

(declare-fun m!787551 () Bool)

(assert (=> b!845889 m!787551))

(check-sat (not b!845889) (not b!845884) (not b!845885) (not mapNonEmpty!25499) tp_is_empty!15933 b_and!22901 (not b!845890) (not b_next!13797) (not start!72910) (not b!845888))
(check-sat b_and!22901 (not b_next!13797))
