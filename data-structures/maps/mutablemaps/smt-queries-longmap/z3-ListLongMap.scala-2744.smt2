; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40312 () Bool)

(assert start!40312)

(declare-fun mapIsEmpty!19179 () Bool)

(declare-fun mapRes!19179 () Bool)

(assert (=> mapIsEmpty!19179 mapRes!19179))

(declare-fun mapNonEmpty!19179 () Bool)

(declare-fun tp!37161 () Bool)

(declare-fun e!260375 () Bool)

(assert (=> mapNonEmpty!19179 (= mapRes!19179 (and tp!37161 e!260375))))

(declare-datatypes ((V!16709 0))(
  ( (V!16710 (val!5896 Int)) )
))
(declare-datatypes ((ValueCell!5508 0))(
  ( (ValueCellFull!5508 (v!8143 V!16709)) (EmptyCell!5508) )
))
(declare-datatypes ((array!27191 0))(
  ( (array!27192 (arr!13041 (Array (_ BitVec 32) ValueCell!5508)) (size!13393 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27191)

(declare-fun mapKey!19179 () (_ BitVec 32))

(declare-fun mapRest!19179 () (Array (_ BitVec 32) ValueCell!5508))

(declare-fun mapValue!19179 () ValueCell!5508)

(assert (=> mapNonEmpty!19179 (= (arr!13041 _values!549) (store mapRest!19179 mapKey!19179 mapValue!19179))))

(declare-fun b!442380 () Bool)

(declare-fun e!260376 () Bool)

(declare-fun tp_is_empty!11703 () Bool)

(assert (=> b!442380 (= e!260376 tp_is_empty!11703)))

(declare-fun res!262090 () Bool)

(declare-fun e!260378 () Bool)

(assert (=> start!40312 (=> (not res!262090) (not e!260378))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27193 0))(
  ( (array!27194 (arr!13042 (Array (_ BitVec 32) (_ BitVec 64))) (size!13394 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27193)

(assert (=> start!40312 (= res!262090 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13394 _keys!709))))))

(assert (=> start!40312 e!260378))

(assert (=> start!40312 true))

(declare-fun e!260377 () Bool)

(declare-fun array_inv!9456 (array!27191) Bool)

(assert (=> start!40312 (and (array_inv!9456 _values!549) e!260377)))

(declare-fun array_inv!9457 (array!27193) Bool)

(assert (=> start!40312 (array_inv!9457 _keys!709)))

(declare-fun b!442381 () Bool)

(declare-fun res!262091 () Bool)

(assert (=> b!442381 (=> (not res!262091) (not e!260378))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!442381 (= res!262091 (validMask!0 mask!1025))))

(declare-fun b!442382 () Bool)

(assert (=> b!442382 (= e!260378 false)))

(declare-fun lt!203181 () Bool)

(declare-datatypes ((List!7807 0))(
  ( (Nil!7804) (Cons!7803 (h!8659 (_ BitVec 64)) (t!13573 List!7807)) )
))
(declare-fun arrayNoDuplicates!0 (array!27193 (_ BitVec 32) List!7807) Bool)

(assert (=> b!442382 (= lt!203181 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7804))))

(declare-fun b!442383 () Bool)

(assert (=> b!442383 (= e!260377 (and e!260376 mapRes!19179))))

(declare-fun condMapEmpty!19179 () Bool)

(declare-fun mapDefault!19179 () ValueCell!5508)

(assert (=> b!442383 (= condMapEmpty!19179 (= (arr!13041 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5508)) mapDefault!19179)))))

(declare-fun b!442384 () Bool)

(declare-fun res!262089 () Bool)

(assert (=> b!442384 (=> (not res!262089) (not e!260378))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!442384 (= res!262089 (and (= (size!13393 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13394 _keys!709) (size!13393 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!442385 () Bool)

(assert (=> b!442385 (= e!260375 tp_is_empty!11703)))

(declare-fun b!442386 () Bool)

(declare-fun res!262088 () Bool)

(assert (=> b!442386 (=> (not res!262088) (not e!260378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27193 (_ BitVec 32)) Bool)

(assert (=> b!442386 (= res!262088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!40312 res!262090) b!442381))

(assert (= (and b!442381 res!262091) b!442384))

(assert (= (and b!442384 res!262089) b!442386))

(assert (= (and b!442386 res!262088) b!442382))

(assert (= (and b!442383 condMapEmpty!19179) mapIsEmpty!19179))

(assert (= (and b!442383 (not condMapEmpty!19179)) mapNonEmpty!19179))

(get-info :version)

(assert (= (and mapNonEmpty!19179 ((_ is ValueCellFull!5508) mapValue!19179)) b!442385))

(assert (= (and b!442383 ((_ is ValueCellFull!5508) mapDefault!19179)) b!442380))

(assert (= start!40312 b!442383))

(declare-fun m!429029 () Bool)

(assert (=> b!442386 m!429029))

(declare-fun m!429031 () Bool)

(assert (=> b!442381 m!429031))

(declare-fun m!429033 () Bool)

(assert (=> start!40312 m!429033))

(declare-fun m!429035 () Bool)

(assert (=> start!40312 m!429035))

(declare-fun m!429037 () Bool)

(assert (=> b!442382 m!429037))

(declare-fun m!429039 () Bool)

(assert (=> mapNonEmpty!19179 m!429039))

(check-sat tp_is_empty!11703 (not start!40312) (not b!442381) (not b!442386) (not b!442382) (not mapNonEmpty!19179))
(check-sat)
