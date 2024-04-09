; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39734 () Bool)

(assert start!39734)

(declare-fun b_free!9993 () Bool)

(declare-fun b_next!9993 () Bool)

(assert (=> start!39734 (= b_free!9993 (not b_next!9993))))

(declare-fun tp!35508 () Bool)

(declare-fun b_and!17667 () Bool)

(assert (=> start!39734 (= tp!35508 b_and!17667)))

(declare-fun b!427057 () Bool)

(declare-fun res!250514 () Bool)

(declare-fun e!253251 () Bool)

(assert (=> b!427057 (=> (not res!250514) (not e!253251))))

(declare-datatypes ((array!26109 0))(
  ( (array!26110 (arr!12501 (Array (_ BitVec 32) (_ BitVec 64))) (size!12853 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26109)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26109 (_ BitVec 32)) Bool)

(assert (=> b!427057 (= res!250514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427058 () Bool)

(declare-fun e!253255 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!427058 (= e!253255 (and (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!12853 _keys!709))))))

(declare-fun mapNonEmpty!18339 () Bool)

(declare-fun mapRes!18339 () Bool)

(declare-fun tp!35507 () Bool)

(declare-fun e!253252 () Bool)

(assert (=> mapNonEmpty!18339 (= mapRes!18339 (and tp!35507 e!253252))))

(declare-datatypes ((V!15965 0))(
  ( (V!15966 (val!5617 Int)) )
))
(declare-datatypes ((ValueCell!5229 0))(
  ( (ValueCellFull!5229 (v!7860 V!15965)) (EmptyCell!5229) )
))
(declare-fun mapRest!18339 () (Array (_ BitVec 32) ValueCell!5229))

(declare-fun mapValue!18339 () ValueCell!5229)

(declare-fun mapKey!18339 () (_ BitVec 32))

(declare-datatypes ((array!26111 0))(
  ( (array!26112 (arr!12502 (Array (_ BitVec 32) ValueCell!5229)) (size!12854 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26111)

(assert (=> mapNonEmpty!18339 (= (arr!12502 _values!549) (store mapRest!18339 mapKey!18339 mapValue!18339))))

(declare-fun b!427059 () Bool)

(declare-fun res!250525 () Bool)

(assert (=> b!427059 (=> (not res!250525) (not e!253251))))

(declare-datatypes ((List!7369 0))(
  ( (Nil!7366) (Cons!7365 (h!8221 (_ BitVec 64)) (t!12821 List!7369)) )
))
(declare-fun arrayNoDuplicates!0 (array!26109 (_ BitVec 32) List!7369) Bool)

(assert (=> b!427059 (= res!250525 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7366))))

(declare-fun b!427060 () Bool)

(declare-fun e!253254 () Bool)

(assert (=> b!427060 (= e!253251 e!253254)))

(declare-fun res!250519 () Bool)

(assert (=> b!427060 (=> (not res!250519) (not e!253254))))

(declare-fun lt!195180 () array!26109)

(assert (=> b!427060 (= res!250519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195180 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427060 (= lt!195180 (array!26110 (store (arr!12501 _keys!709) i!563 k0!794) (size!12853 _keys!709)))))

(declare-fun b!427061 () Bool)

(declare-fun res!250518 () Bool)

(assert (=> b!427061 (=> (not res!250518) (not e!253251))))

(assert (=> b!427061 (= res!250518 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12853 _keys!709))))))

(declare-fun b!427062 () Bool)

(declare-fun tp_is_empty!11145 () Bool)

(assert (=> b!427062 (= e!253252 tp_is_empty!11145)))

(declare-fun b!427063 () Bool)

(declare-fun res!250520 () Bool)

(assert (=> b!427063 (=> (not res!250520) (not e!253251))))

(assert (=> b!427063 (= res!250520 (or (= (select (arr!12501 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12501 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427064 () Bool)

(declare-fun res!250521 () Bool)

(assert (=> b!427064 (=> (not res!250521) (not e!253254))))

(assert (=> b!427064 (= res!250521 (bvsle from!863 i!563))))

(declare-fun b!427065 () Bool)

(declare-fun res!250516 () Bool)

(assert (=> b!427065 (=> (not res!250516) (not e!253254))))

(assert (=> b!427065 (= res!250516 (arrayNoDuplicates!0 lt!195180 #b00000000000000000000000000000000 Nil!7366))))

(declare-fun b!427066 () Bool)

(declare-fun res!250527 () Bool)

(assert (=> b!427066 (=> (not res!250527) (not e!253251))))

(declare-fun arrayContainsKey!0 (array!26109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427066 (= res!250527 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!427067 () Bool)

(declare-fun e!253258 () Bool)

(assert (=> b!427067 (= e!253258 tp_is_empty!11145)))

(declare-fun mapIsEmpty!18339 () Bool)

(assert (=> mapIsEmpty!18339 mapRes!18339))

(declare-fun b!427068 () Bool)

(declare-fun res!250526 () Bool)

(assert (=> b!427068 (=> (not res!250526) (not e!253251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427068 (= res!250526 (validMask!0 mask!1025))))

(declare-fun b!427069 () Bool)

(declare-fun e!253257 () Bool)

(assert (=> b!427069 (= e!253257 (and e!253258 mapRes!18339))))

(declare-fun condMapEmpty!18339 () Bool)

(declare-fun mapDefault!18339 () ValueCell!5229)

(assert (=> b!427069 (= condMapEmpty!18339 (= (arr!12502 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5229)) mapDefault!18339)))))

(declare-fun b!427070 () Bool)

(declare-fun e!253253 () Bool)

(assert (=> b!427070 (= e!253253 (not e!253255))))

(declare-fun res!250517 () Bool)

(assert (=> b!427070 (=> res!250517 e!253255)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427070 (= res!250517 (not (validKeyInArray!0 (select (arr!12501 _keys!709) from!863))))))

(declare-fun minValue!515 () V!15965)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!195176 () array!26111)

(declare-fun zeroValue!515 () V!15965)

(declare-fun v!412 () V!15965)

(declare-datatypes ((tuple2!7320 0))(
  ( (tuple2!7321 (_1!3670 (_ BitVec 64)) (_2!3670 V!15965)) )
))
(declare-datatypes ((List!7370 0))(
  ( (Nil!7367) (Cons!7366 (h!8222 tuple2!7320) (t!12822 List!7370)) )
))
(declare-datatypes ((ListLongMap!6247 0))(
  ( (ListLongMap!6248 (toList!3139 List!7370)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1340 (array!26109 array!26111 (_ BitVec 32) (_ BitVec 32) V!15965 V!15965 (_ BitVec 32) Int) ListLongMap!6247)

(declare-fun +!1292 (ListLongMap!6247 tuple2!7320) ListLongMap!6247)

(assert (=> b!427070 (= (getCurrentListMapNoExtraKeys!1340 lt!195180 lt!195176 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1292 (getCurrentListMapNoExtraKeys!1340 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7321 k0!794 v!412)))))

(declare-datatypes ((Unit!12487 0))(
  ( (Unit!12488) )
))
(declare-fun lt!195177 () Unit!12487)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!494 (array!26109 array!26111 (_ BitVec 32) (_ BitVec 32) V!15965 V!15965 (_ BitVec 32) (_ BitVec 64) V!15965 (_ BitVec 32) Int) Unit!12487)

(assert (=> b!427070 (= lt!195177 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!494 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427071 () Bool)

(declare-fun res!250515 () Bool)

(assert (=> b!427071 (=> (not res!250515) (not e!253251))))

(assert (=> b!427071 (= res!250515 (validKeyInArray!0 k0!794))))

(declare-fun res!250523 () Bool)

(assert (=> start!39734 (=> (not res!250523) (not e!253251))))

(assert (=> start!39734 (= res!250523 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12853 _keys!709))))))

(assert (=> start!39734 e!253251))

(assert (=> start!39734 tp_is_empty!11145))

(assert (=> start!39734 tp!35508))

(assert (=> start!39734 true))

(declare-fun array_inv!9102 (array!26111) Bool)

(assert (=> start!39734 (and (array_inv!9102 _values!549) e!253257)))

(declare-fun array_inv!9103 (array!26109) Bool)

(assert (=> start!39734 (array_inv!9103 _keys!709)))

(declare-fun b!427072 () Bool)

(declare-fun res!250524 () Bool)

(assert (=> b!427072 (=> (not res!250524) (not e!253251))))

(assert (=> b!427072 (= res!250524 (and (= (size!12854 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12853 _keys!709) (size!12854 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427073 () Bool)

(assert (=> b!427073 (= e!253254 e!253253)))

(declare-fun res!250522 () Bool)

(assert (=> b!427073 (=> (not res!250522) (not e!253253))))

(assert (=> b!427073 (= res!250522 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!195179 () ListLongMap!6247)

(assert (=> b!427073 (= lt!195179 (getCurrentListMapNoExtraKeys!1340 lt!195180 lt!195176 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!427073 (= lt!195176 (array!26112 (store (arr!12502 _values!549) i!563 (ValueCellFull!5229 v!412)) (size!12854 _values!549)))))

(declare-fun lt!195178 () ListLongMap!6247)

(assert (=> b!427073 (= lt!195178 (getCurrentListMapNoExtraKeys!1340 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39734 res!250523) b!427068))

(assert (= (and b!427068 res!250526) b!427072))

(assert (= (and b!427072 res!250524) b!427057))

(assert (= (and b!427057 res!250514) b!427059))

(assert (= (and b!427059 res!250525) b!427061))

(assert (= (and b!427061 res!250518) b!427071))

(assert (= (and b!427071 res!250515) b!427063))

(assert (= (and b!427063 res!250520) b!427066))

(assert (= (and b!427066 res!250527) b!427060))

(assert (= (and b!427060 res!250519) b!427065))

(assert (= (and b!427065 res!250516) b!427064))

(assert (= (and b!427064 res!250521) b!427073))

(assert (= (and b!427073 res!250522) b!427070))

(assert (= (and b!427070 (not res!250517)) b!427058))

(assert (= (and b!427069 condMapEmpty!18339) mapIsEmpty!18339))

(assert (= (and b!427069 (not condMapEmpty!18339)) mapNonEmpty!18339))

(get-info :version)

(assert (= (and mapNonEmpty!18339 ((_ is ValueCellFull!5229) mapValue!18339)) b!427062))

(assert (= (and b!427069 ((_ is ValueCellFull!5229) mapDefault!18339)) b!427067))

(assert (= start!39734 b!427069))

(declare-fun m!415615 () Bool)

(assert (=> b!427073 m!415615))

(declare-fun m!415617 () Bool)

(assert (=> b!427073 m!415617))

(declare-fun m!415619 () Bool)

(assert (=> b!427073 m!415619))

(declare-fun m!415621 () Bool)

(assert (=> b!427063 m!415621))

(declare-fun m!415623 () Bool)

(assert (=> b!427070 m!415623))

(declare-fun m!415625 () Bool)

(assert (=> b!427070 m!415625))

(assert (=> b!427070 m!415625))

(declare-fun m!415627 () Bool)

(assert (=> b!427070 m!415627))

(declare-fun m!415629 () Bool)

(assert (=> b!427070 m!415629))

(assert (=> b!427070 m!415623))

(declare-fun m!415631 () Bool)

(assert (=> b!427070 m!415631))

(declare-fun m!415633 () Bool)

(assert (=> b!427070 m!415633))

(declare-fun m!415635 () Bool)

(assert (=> mapNonEmpty!18339 m!415635))

(declare-fun m!415637 () Bool)

(assert (=> b!427066 m!415637))

(declare-fun m!415639 () Bool)

(assert (=> b!427059 m!415639))

(declare-fun m!415641 () Bool)

(assert (=> b!427068 m!415641))

(declare-fun m!415643 () Bool)

(assert (=> start!39734 m!415643))

(declare-fun m!415645 () Bool)

(assert (=> start!39734 m!415645))

(declare-fun m!415647 () Bool)

(assert (=> b!427065 m!415647))

(declare-fun m!415649 () Bool)

(assert (=> b!427060 m!415649))

(declare-fun m!415651 () Bool)

(assert (=> b!427060 m!415651))

(declare-fun m!415653 () Bool)

(assert (=> b!427057 m!415653))

(declare-fun m!415655 () Bool)

(assert (=> b!427071 m!415655))

(check-sat (not b!427065) (not b!427066) (not b!427070) tp_is_empty!11145 (not b!427060) (not b!427073) (not b_next!9993) (not start!39734) (not b!427059) (not b!427057) (not b!427071) (not b!427068) (not mapNonEmpty!18339) b_and!17667)
(check-sat b_and!17667 (not b_next!9993))
