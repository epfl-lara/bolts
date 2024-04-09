; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40088 () Bool)

(assert start!40088)

(declare-fun b_free!10347 () Bool)

(declare-fun b_next!10347 () Bool)

(assert (=> start!40088 (= b_free!10347 (not b_next!10347))))

(declare-fun tp!36570 () Bool)

(declare-fun b_and!18333 () Bool)

(assert (=> start!40088 (= tp!36570 b_and!18333)))

(declare-fun b!437489 () Bool)

(declare-fun e!258178 () Bool)

(declare-fun e!258183 () Bool)

(assert (=> b!437489 (= e!258178 e!258183)))

(declare-fun res!258220 () Bool)

(assert (=> b!437489 (=> (not res!258220) (not e!258183))))

(declare-datatypes ((array!26795 0))(
  ( (array!26796 (arr!12844 (Array (_ BitVec 32) (_ BitVec 64))) (size!13196 (_ BitVec 32))) )
))
(declare-fun lt!201686 () array!26795)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26795 (_ BitVec 32)) Bool)

(assert (=> b!437489 (= res!258220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201686 mask!1025))))

(declare-fun _keys!709 () array!26795)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437489 (= lt!201686 (array!26796 (store (arr!12844 _keys!709) i!563 k0!794) (size!13196 _keys!709)))))

(declare-fun b!437490 () Bool)

(declare-fun res!258223 () Bool)

(assert (=> b!437490 (=> (not res!258223) (not e!258183))))

(declare-datatypes ((List!7656 0))(
  ( (Nil!7653) (Cons!7652 (h!8508 (_ BitVec 64)) (t!13420 List!7656)) )
))
(declare-fun arrayNoDuplicates!0 (array!26795 (_ BitVec 32) List!7656) Bool)

(assert (=> b!437490 (= res!258223 (arrayNoDuplicates!0 lt!201686 #b00000000000000000000000000000000 Nil!7653))))

(declare-fun b!437491 () Bool)

(declare-fun res!258218 () Bool)

(assert (=> b!437491 (=> (not res!258218) (not e!258178))))

(assert (=> b!437491 (= res!258218 (or (= (select (arr!12844 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12844 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437492 () Bool)

(declare-fun res!258219 () Bool)

(assert (=> b!437492 (=> (not res!258219) (not e!258178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437492 (= res!258219 (validMask!0 mask!1025))))

(declare-fun b!437493 () Bool)

(declare-fun e!258179 () Bool)

(assert (=> b!437493 (= e!258183 e!258179)))

(declare-fun res!258224 () Bool)

(assert (=> b!437493 (=> (not res!258224) (not e!258179))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!437493 (= res!258224 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16437 0))(
  ( (V!16438 (val!5794 Int)) )
))
(declare-fun minValue!515 () V!16437)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5406 0))(
  ( (ValueCellFull!5406 (v!8037 V!16437)) (EmptyCell!5406) )
))
(declare-datatypes ((array!26797 0))(
  ( (array!26798 (arr!12845 (Array (_ BitVec 32) ValueCell!5406)) (size!13197 (_ BitVec 32))) )
))
(declare-fun lt!201684 () array!26797)

(declare-fun zeroValue!515 () V!16437)

(declare-datatypes ((tuple2!7612 0))(
  ( (tuple2!7613 (_1!3816 (_ BitVec 64)) (_2!3816 V!16437)) )
))
(declare-datatypes ((List!7657 0))(
  ( (Nil!7654) (Cons!7653 (h!8509 tuple2!7612) (t!13421 List!7657)) )
))
(declare-datatypes ((ListLongMap!6539 0))(
  ( (ListLongMap!6540 (toList!3285 List!7657)) )
))
(declare-fun lt!201685 () ListLongMap!6539)

(declare-fun getCurrentListMapNoExtraKeys!1467 (array!26795 array!26797 (_ BitVec 32) (_ BitVec 32) V!16437 V!16437 (_ BitVec 32) Int) ListLongMap!6539)

(assert (=> b!437493 (= lt!201685 (getCurrentListMapNoExtraKeys!1467 lt!201686 lt!201684 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26797)

(declare-fun v!412 () V!16437)

(assert (=> b!437493 (= lt!201684 (array!26798 (store (arr!12845 _values!549) i!563 (ValueCellFull!5406 v!412)) (size!13197 _values!549)))))

(declare-fun lt!201687 () ListLongMap!6539)

(assert (=> b!437493 (= lt!201687 (getCurrentListMapNoExtraKeys!1467 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437494 () Bool)

(assert (=> b!437494 (= e!258179 (not true))))

(declare-fun +!1429 (ListLongMap!6539 tuple2!7612) ListLongMap!6539)

(assert (=> b!437494 (= (getCurrentListMapNoExtraKeys!1467 lt!201686 lt!201684 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1429 (getCurrentListMapNoExtraKeys!1467 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7613 k0!794 v!412)))))

(declare-datatypes ((Unit!12973 0))(
  ( (Unit!12974) )
))
(declare-fun lt!201683 () Unit!12973)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!607 (array!26795 array!26797 (_ BitVec 32) (_ BitVec 32) V!16437 V!16437 (_ BitVec 32) (_ BitVec 64) V!16437 (_ BitVec 32) Int) Unit!12973)

(assert (=> b!437494 (= lt!201683 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!607 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437495 () Bool)

(declare-fun e!258181 () Bool)

(declare-fun tp_is_empty!11499 () Bool)

(assert (=> b!437495 (= e!258181 tp_is_empty!11499)))

(declare-fun mapNonEmpty!18870 () Bool)

(declare-fun mapRes!18870 () Bool)

(declare-fun tp!36569 () Bool)

(assert (=> mapNonEmpty!18870 (= mapRes!18870 (and tp!36569 e!258181))))

(declare-fun mapValue!18870 () ValueCell!5406)

(declare-fun mapRest!18870 () (Array (_ BitVec 32) ValueCell!5406))

(declare-fun mapKey!18870 () (_ BitVec 32))

(assert (=> mapNonEmpty!18870 (= (arr!12845 _values!549) (store mapRest!18870 mapKey!18870 mapValue!18870))))

(declare-fun b!437496 () Bool)

(declare-fun res!258215 () Bool)

(assert (=> b!437496 (=> (not res!258215) (not e!258178))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437496 (= res!258215 (validKeyInArray!0 k0!794))))

(declare-fun res!258216 () Bool)

(assert (=> start!40088 (=> (not res!258216) (not e!258178))))

(assert (=> start!40088 (= res!258216 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13196 _keys!709))))))

(assert (=> start!40088 e!258178))

(assert (=> start!40088 tp_is_empty!11499))

(assert (=> start!40088 tp!36570))

(assert (=> start!40088 true))

(declare-fun e!258182 () Bool)

(declare-fun array_inv!9330 (array!26797) Bool)

(assert (=> start!40088 (and (array_inv!9330 _values!549) e!258182)))

(declare-fun array_inv!9331 (array!26795) Bool)

(assert (=> start!40088 (array_inv!9331 _keys!709)))

(declare-fun b!437497 () Bool)

(declare-fun e!258180 () Bool)

(assert (=> b!437497 (= e!258180 tp_is_empty!11499)))

(declare-fun b!437498 () Bool)

(declare-fun res!258222 () Bool)

(assert (=> b!437498 (=> (not res!258222) (not e!258178))))

(assert (=> b!437498 (= res!258222 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437499 () Bool)

(declare-fun res!258217 () Bool)

(assert (=> b!437499 (=> (not res!258217) (not e!258178))))

(declare-fun arrayContainsKey!0 (array!26795 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437499 (= res!258217 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18870 () Bool)

(assert (=> mapIsEmpty!18870 mapRes!18870))

(declare-fun b!437500 () Bool)

(declare-fun res!258221 () Bool)

(assert (=> b!437500 (=> (not res!258221) (not e!258178))))

(assert (=> b!437500 (= res!258221 (and (= (size!13197 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13196 _keys!709) (size!13197 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437501 () Bool)

(declare-fun res!258214 () Bool)

(assert (=> b!437501 (=> (not res!258214) (not e!258178))))

(assert (=> b!437501 (= res!258214 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13196 _keys!709))))))

(declare-fun b!437502 () Bool)

(declare-fun res!258213 () Bool)

(assert (=> b!437502 (=> (not res!258213) (not e!258183))))

(assert (=> b!437502 (= res!258213 (bvsle from!863 i!563))))

(declare-fun b!437503 () Bool)

(declare-fun res!258225 () Bool)

(assert (=> b!437503 (=> (not res!258225) (not e!258178))))

(assert (=> b!437503 (= res!258225 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7653))))

(declare-fun b!437504 () Bool)

(assert (=> b!437504 (= e!258182 (and e!258180 mapRes!18870))))

(declare-fun condMapEmpty!18870 () Bool)

(declare-fun mapDefault!18870 () ValueCell!5406)

(assert (=> b!437504 (= condMapEmpty!18870 (= (arr!12845 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5406)) mapDefault!18870)))))

(assert (= (and start!40088 res!258216) b!437492))

(assert (= (and b!437492 res!258219) b!437500))

(assert (= (and b!437500 res!258221) b!437498))

(assert (= (and b!437498 res!258222) b!437503))

(assert (= (and b!437503 res!258225) b!437501))

(assert (= (and b!437501 res!258214) b!437496))

(assert (= (and b!437496 res!258215) b!437491))

(assert (= (and b!437491 res!258218) b!437499))

(assert (= (and b!437499 res!258217) b!437489))

(assert (= (and b!437489 res!258220) b!437490))

(assert (= (and b!437490 res!258223) b!437502))

(assert (= (and b!437502 res!258213) b!437493))

(assert (= (and b!437493 res!258224) b!437494))

(assert (= (and b!437504 condMapEmpty!18870) mapIsEmpty!18870))

(assert (= (and b!437504 (not condMapEmpty!18870)) mapNonEmpty!18870))

(get-info :version)

(assert (= (and mapNonEmpty!18870 ((_ is ValueCellFull!5406) mapValue!18870)) b!437495))

(assert (= (and b!437504 ((_ is ValueCellFull!5406) mapDefault!18870)) b!437497))

(assert (= start!40088 b!437504))

(declare-fun m!425145 () Bool)

(assert (=> b!437494 m!425145))

(declare-fun m!425147 () Bool)

(assert (=> b!437494 m!425147))

(assert (=> b!437494 m!425147))

(declare-fun m!425149 () Bool)

(assert (=> b!437494 m!425149))

(declare-fun m!425151 () Bool)

(assert (=> b!437494 m!425151))

(declare-fun m!425153 () Bool)

(assert (=> b!437490 m!425153))

(declare-fun m!425155 () Bool)

(assert (=> b!437498 m!425155))

(declare-fun m!425157 () Bool)

(assert (=> b!437493 m!425157))

(declare-fun m!425159 () Bool)

(assert (=> b!437493 m!425159))

(declare-fun m!425161 () Bool)

(assert (=> b!437493 m!425161))

(declare-fun m!425163 () Bool)

(assert (=> b!437499 m!425163))

(declare-fun m!425165 () Bool)

(assert (=> start!40088 m!425165))

(declare-fun m!425167 () Bool)

(assert (=> start!40088 m!425167))

(declare-fun m!425169 () Bool)

(assert (=> b!437503 m!425169))

(declare-fun m!425171 () Bool)

(assert (=> b!437496 m!425171))

(declare-fun m!425173 () Bool)

(assert (=> b!437492 m!425173))

(declare-fun m!425175 () Bool)

(assert (=> b!437489 m!425175))

(declare-fun m!425177 () Bool)

(assert (=> b!437489 m!425177))

(declare-fun m!425179 () Bool)

(assert (=> b!437491 m!425179))

(declare-fun m!425181 () Bool)

(assert (=> mapNonEmpty!18870 m!425181))

(check-sat (not b!437496) (not b!437492) (not b!437493) b_and!18333 (not mapNonEmpty!18870) (not b!437490) (not b!437498) tp_is_empty!11499 (not start!40088) (not b!437489) (not b!437499) (not b!437494) (not b!437503) (not b_next!10347))
(check-sat b_and!18333 (not b_next!10347))
