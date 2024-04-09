; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41066 () Bool)

(assert start!41066)

(declare-fun b_free!10971 () Bool)

(declare-fun b_next!10971 () Bool)

(assert (=> start!41066 (= b_free!10971 (not b_next!10971))))

(declare-fun tp!38743 () Bool)

(declare-fun b_and!19167 () Bool)

(assert (=> start!41066 (= tp!38743 b_and!19167)))

(declare-fun b!457578 () Bool)

(declare-fun res!273346 () Bool)

(declare-fun e!267219 () Bool)

(assert (=> b!457578 (=> (not res!273346) (not e!267219))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457578 (= res!273346 (validMask!0 mask!1025))))

(declare-fun b!457579 () Bool)

(declare-fun res!273356 () Bool)

(assert (=> b!457579 (=> (not res!273356) (not e!267219))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28385 0))(
  ( (array!28386 (arr!13632 (Array (_ BitVec 32) (_ BitVec 64))) (size!13984 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28385)

(assert (=> b!457579 (= res!273356 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13984 _keys!709))))))

(declare-fun b!457580 () Bool)

(declare-fun res!273352 () Bool)

(declare-fun e!267223 () Bool)

(assert (=> b!457580 (=> (not res!273352) (not e!267223))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!457580 (= res!273352 (bvsle from!863 i!563))))

(declare-fun b!457581 () Bool)

(declare-fun res!273357 () Bool)

(assert (=> b!457581 (=> (not res!273357) (not e!267219))))

(assert (=> b!457581 (= res!273357 (or (= (select (arr!13632 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13632 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!20107 () Bool)

(declare-fun mapRes!20107 () Bool)

(declare-fun tp!38742 () Bool)

(declare-fun e!267220 () Bool)

(assert (=> mapNonEmpty!20107 (= mapRes!20107 (and tp!38742 e!267220))))

(declare-datatypes ((V!17517 0))(
  ( (V!17518 (val!6199 Int)) )
))
(declare-datatypes ((ValueCell!5811 0))(
  ( (ValueCellFull!5811 (v!8465 V!17517)) (EmptyCell!5811) )
))
(declare-fun mapRest!20107 () (Array (_ BitVec 32) ValueCell!5811))

(declare-fun mapKey!20107 () (_ BitVec 32))

(declare-datatypes ((array!28387 0))(
  ( (array!28388 (arr!13633 (Array (_ BitVec 32) ValueCell!5811)) (size!13985 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28387)

(declare-fun mapValue!20107 () ValueCell!5811)

(assert (=> mapNonEmpty!20107 (= (arr!13633 _values!549) (store mapRest!20107 mapKey!20107 mapValue!20107))))

(declare-fun b!457582 () Bool)

(declare-fun e!267217 () Bool)

(declare-fun e!267216 () Bool)

(assert (=> b!457582 (= e!267217 (not e!267216))))

(declare-fun res!273349 () Bool)

(assert (=> b!457582 (=> res!273349 e!267216)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457582 (= res!273349 (not (validKeyInArray!0 (select (arr!13632 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8132 0))(
  ( (tuple2!8133 (_1!4076 (_ BitVec 64)) (_2!4076 V!17517)) )
))
(declare-datatypes ((List!8234 0))(
  ( (Nil!8231) (Cons!8230 (h!9086 tuple2!8132) (t!14092 List!8234)) )
))
(declare-datatypes ((ListLongMap!7059 0))(
  ( (ListLongMap!7060 (toList!3545 List!8234)) )
))
(declare-fun lt!207028 () ListLongMap!7059)

(declare-fun lt!207030 () ListLongMap!7059)

(assert (=> b!457582 (= lt!207028 lt!207030)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!207034 () ListLongMap!7059)

(declare-fun v!412 () V!17517)

(declare-fun +!1565 (ListLongMap!7059 tuple2!8132) ListLongMap!7059)

(assert (=> b!457582 (= lt!207030 (+!1565 lt!207034 (tuple2!8133 k0!794 v!412)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17517)

(declare-fun minValue!515 () V!17517)

(declare-fun lt!207033 () array!28385)

(declare-fun lt!207029 () array!28387)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1718 (array!28385 array!28387 (_ BitVec 32) (_ BitVec 32) V!17517 V!17517 (_ BitVec 32) Int) ListLongMap!7059)

(assert (=> b!457582 (= lt!207028 (getCurrentListMapNoExtraKeys!1718 lt!207033 lt!207029 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457582 (= lt!207034 (getCurrentListMapNoExtraKeys!1718 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13247 0))(
  ( (Unit!13248) )
))
(declare-fun lt!207031 () Unit!13247)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!726 (array!28385 array!28387 (_ BitVec 32) (_ BitVec 32) V!17517 V!17517 (_ BitVec 32) (_ BitVec 64) V!17517 (_ BitVec 32) Int) Unit!13247)

(assert (=> b!457582 (= lt!207031 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!726 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457583 () Bool)

(declare-fun tp_is_empty!12309 () Bool)

(assert (=> b!457583 (= e!267220 tp_is_empty!12309)))

(declare-fun b!457584 () Bool)

(assert (=> b!457584 (= e!267216 (or (not (= (select (arr!13632 _keys!709) from!863) k0!794)) (bvslt from!863 (size!13984 _keys!709))))))

(declare-fun lt!207032 () ListLongMap!7059)

(declare-fun get!6723 (ValueCell!5811 V!17517) V!17517)

(declare-fun dynLambda!877 (Int (_ BitVec 64)) V!17517)

(assert (=> b!457584 (= lt!207032 (+!1565 lt!207030 (tuple2!8133 (select (arr!13632 _keys!709) from!863) (get!6723 (select (arr!13633 _values!549) from!863) (dynLambda!877 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!20107 () Bool)

(assert (=> mapIsEmpty!20107 mapRes!20107))

(declare-fun b!457585 () Bool)

(assert (=> b!457585 (= e!267219 e!267223)))

(declare-fun res!273348 () Bool)

(assert (=> b!457585 (=> (not res!273348) (not e!267223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28385 (_ BitVec 32)) Bool)

(assert (=> b!457585 (= res!273348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207033 mask!1025))))

(assert (=> b!457585 (= lt!207033 (array!28386 (store (arr!13632 _keys!709) i!563 k0!794) (size!13984 _keys!709)))))

(declare-fun b!457586 () Bool)

(declare-fun e!267218 () Bool)

(assert (=> b!457586 (= e!267218 tp_is_empty!12309)))

(declare-fun b!457587 () Bool)

(declare-fun e!267221 () Bool)

(assert (=> b!457587 (= e!267221 (and e!267218 mapRes!20107))))

(declare-fun condMapEmpty!20107 () Bool)

(declare-fun mapDefault!20107 () ValueCell!5811)

(assert (=> b!457587 (= condMapEmpty!20107 (= (arr!13633 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5811)) mapDefault!20107)))))

(declare-fun res!273345 () Bool)

(assert (=> start!41066 (=> (not res!273345) (not e!267219))))

(assert (=> start!41066 (= res!273345 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13984 _keys!709))))))

(assert (=> start!41066 e!267219))

(assert (=> start!41066 tp_is_empty!12309))

(assert (=> start!41066 tp!38743))

(assert (=> start!41066 true))

(declare-fun array_inv!9862 (array!28387) Bool)

(assert (=> start!41066 (and (array_inv!9862 _values!549) e!267221)))

(declare-fun array_inv!9863 (array!28385) Bool)

(assert (=> start!41066 (array_inv!9863 _keys!709)))

(declare-fun b!457588 () Bool)

(declare-fun res!273350 () Bool)

(assert (=> b!457588 (=> (not res!273350) (not e!267219))))

(declare-fun arrayContainsKey!0 (array!28385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457588 (= res!273350 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!457589 () Bool)

(declare-fun res!273344 () Bool)

(assert (=> b!457589 (=> (not res!273344) (not e!267219))))

(assert (=> b!457589 (= res!273344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457590 () Bool)

(declare-fun res!273353 () Bool)

(assert (=> b!457590 (=> (not res!273353) (not e!267223))))

(declare-datatypes ((List!8235 0))(
  ( (Nil!8232) (Cons!8231 (h!9087 (_ BitVec 64)) (t!14093 List!8235)) )
))
(declare-fun arrayNoDuplicates!0 (array!28385 (_ BitVec 32) List!8235) Bool)

(assert (=> b!457590 (= res!273353 (arrayNoDuplicates!0 lt!207033 #b00000000000000000000000000000000 Nil!8232))))

(declare-fun b!457591 () Bool)

(declare-fun res!273351 () Bool)

(assert (=> b!457591 (=> (not res!273351) (not e!267219))))

(assert (=> b!457591 (= res!273351 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8232))))

(declare-fun b!457592 () Bool)

(assert (=> b!457592 (= e!267223 e!267217)))

(declare-fun res!273347 () Bool)

(assert (=> b!457592 (=> (not res!273347) (not e!267217))))

(assert (=> b!457592 (= res!273347 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!457592 (= lt!207032 (getCurrentListMapNoExtraKeys!1718 lt!207033 lt!207029 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!457592 (= lt!207029 (array!28388 (store (arr!13633 _values!549) i!563 (ValueCellFull!5811 v!412)) (size!13985 _values!549)))))

(declare-fun lt!207027 () ListLongMap!7059)

(assert (=> b!457592 (= lt!207027 (getCurrentListMapNoExtraKeys!1718 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457593 () Bool)

(declare-fun res!273354 () Bool)

(assert (=> b!457593 (=> (not res!273354) (not e!267219))))

(assert (=> b!457593 (= res!273354 (validKeyInArray!0 k0!794))))

(declare-fun b!457594 () Bool)

(declare-fun res!273355 () Bool)

(assert (=> b!457594 (=> (not res!273355) (not e!267219))))

(assert (=> b!457594 (= res!273355 (and (= (size!13985 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13984 _keys!709) (size!13985 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!41066 res!273345) b!457578))

(assert (= (and b!457578 res!273346) b!457594))

(assert (= (and b!457594 res!273355) b!457589))

(assert (= (and b!457589 res!273344) b!457591))

(assert (= (and b!457591 res!273351) b!457579))

(assert (= (and b!457579 res!273356) b!457593))

(assert (= (and b!457593 res!273354) b!457581))

(assert (= (and b!457581 res!273357) b!457588))

(assert (= (and b!457588 res!273350) b!457585))

(assert (= (and b!457585 res!273348) b!457590))

(assert (= (and b!457590 res!273353) b!457580))

(assert (= (and b!457580 res!273352) b!457592))

(assert (= (and b!457592 res!273347) b!457582))

(assert (= (and b!457582 (not res!273349)) b!457584))

(assert (= (and b!457587 condMapEmpty!20107) mapIsEmpty!20107))

(assert (= (and b!457587 (not condMapEmpty!20107)) mapNonEmpty!20107))

(get-info :version)

(assert (= (and mapNonEmpty!20107 ((_ is ValueCellFull!5811) mapValue!20107)) b!457583))

(assert (= (and b!457587 ((_ is ValueCellFull!5811) mapDefault!20107)) b!457586))

(assert (= start!41066 b!457587))

(declare-fun b_lambda!9767 () Bool)

(assert (=> (not b_lambda!9767) (not b!457584)))

(declare-fun t!14091 () Bool)

(declare-fun tb!3815 () Bool)

(assert (=> (and start!41066 (= defaultEntry!557 defaultEntry!557) t!14091) tb!3815))

(declare-fun result!7163 () Bool)

(assert (=> tb!3815 (= result!7163 tp_is_empty!12309)))

(assert (=> b!457584 t!14091))

(declare-fun b_and!19169 () Bool)

(assert (= b_and!19167 (and (=> t!14091 result!7163) b_and!19169)))

(declare-fun m!440951 () Bool)

(assert (=> b!457588 m!440951))

(declare-fun m!440953 () Bool)

(assert (=> b!457582 m!440953))

(declare-fun m!440955 () Bool)

(assert (=> b!457582 m!440955))

(declare-fun m!440957 () Bool)

(assert (=> b!457582 m!440957))

(declare-fun m!440959 () Bool)

(assert (=> b!457582 m!440959))

(declare-fun m!440961 () Bool)

(assert (=> b!457582 m!440961))

(assert (=> b!457582 m!440953))

(declare-fun m!440963 () Bool)

(assert (=> b!457582 m!440963))

(declare-fun m!440965 () Bool)

(assert (=> b!457589 m!440965))

(declare-fun m!440967 () Bool)

(assert (=> b!457581 m!440967))

(declare-fun m!440969 () Bool)

(assert (=> b!457585 m!440969))

(declare-fun m!440971 () Bool)

(assert (=> b!457585 m!440971))

(declare-fun m!440973 () Bool)

(assert (=> start!41066 m!440973))

(declare-fun m!440975 () Bool)

(assert (=> start!41066 m!440975))

(declare-fun m!440977 () Bool)

(assert (=> b!457578 m!440977))

(declare-fun m!440979 () Bool)

(assert (=> b!457593 m!440979))

(declare-fun m!440981 () Bool)

(assert (=> b!457590 m!440981))

(declare-fun m!440983 () Bool)

(assert (=> mapNonEmpty!20107 m!440983))

(assert (=> b!457584 m!440953))

(declare-fun m!440985 () Bool)

(assert (=> b!457584 m!440985))

(declare-fun m!440987 () Bool)

(assert (=> b!457584 m!440987))

(declare-fun m!440989 () Bool)

(assert (=> b!457584 m!440989))

(assert (=> b!457584 m!440987))

(assert (=> b!457584 m!440985))

(declare-fun m!440991 () Bool)

(assert (=> b!457584 m!440991))

(declare-fun m!440993 () Bool)

(assert (=> b!457591 m!440993))

(declare-fun m!440995 () Bool)

(assert (=> b!457592 m!440995))

(declare-fun m!440997 () Bool)

(assert (=> b!457592 m!440997))

(declare-fun m!440999 () Bool)

(assert (=> b!457592 m!440999))

(check-sat (not start!41066) tp_is_empty!12309 (not b!457590) (not b_lambda!9767) (not b!457593) b_and!19169 (not b!457585) (not b!457589) (not b!457588) (not b!457584) (not b!457582) (not b!457591) (not b_next!10971) (not b!457578) (not mapNonEmpty!20107) (not b!457592))
(check-sat b_and!19169 (not b_next!10971))
