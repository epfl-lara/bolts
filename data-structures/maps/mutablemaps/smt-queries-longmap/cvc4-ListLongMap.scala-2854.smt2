; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41166 () Bool)

(assert start!41166)

(declare-fun b_free!11027 () Bool)

(declare-fun b_next!11027 () Bool)

(assert (=> start!41166 (= b_free!11027 (not b_next!11027))))

(declare-fun tp!38916 () Bool)

(declare-fun b_and!19311 () Bool)

(assert (=> start!41166 (= tp!38916 b_and!19311)))

(declare-fun b!459442 () Bool)

(declare-fun e!268141 () Bool)

(declare-fun tp_is_empty!12365 () Bool)

(assert (=> b!459442 (= e!268141 tp_is_empty!12365)))

(declare-fun b!459443 () Bool)

(declare-fun res!274673 () Bool)

(declare-fun e!268136 () Bool)

(assert (=> b!459443 (=> (not res!274673) (not e!268136))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459443 (= res!274673 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!20197 () Bool)

(declare-fun mapRes!20197 () Bool)

(assert (=> mapIsEmpty!20197 mapRes!20197))

(declare-fun res!274667 () Bool)

(declare-fun e!268133 () Bool)

(assert (=> start!41166 (=> (not res!274667) (not e!268133))))

(declare-datatypes ((array!28495 0))(
  ( (array!28496 (arr!13685 (Array (_ BitVec 32) (_ BitVec 64))) (size!14037 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28495)

(assert (=> start!41166 (= res!274667 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14037 _keys!709))))))

(assert (=> start!41166 e!268133))

(assert (=> start!41166 tp_is_empty!12365))

(assert (=> start!41166 tp!38916))

(assert (=> start!41166 true))

(declare-datatypes ((V!17591 0))(
  ( (V!17592 (val!6227 Int)) )
))
(declare-datatypes ((ValueCell!5839 0))(
  ( (ValueCellFull!5839 (v!8501 V!17591)) (EmptyCell!5839) )
))
(declare-datatypes ((array!28497 0))(
  ( (array!28498 (arr!13686 (Array (_ BitVec 32) ValueCell!5839)) (size!14038 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28497)

(declare-fun e!268135 () Bool)

(declare-fun array_inv!9896 (array!28497) Bool)

(assert (=> start!41166 (and (array_inv!9896 _values!549) e!268135)))

(declare-fun array_inv!9897 (array!28495) Bool)

(assert (=> start!41166 (array_inv!9897 _keys!709)))

(declare-fun b!459444 () Bool)

(declare-datatypes ((Unit!13304 0))(
  ( (Unit!13305) )
))
(declare-fun e!268139 () Unit!13304)

(declare-fun Unit!13306 () Unit!13304)

(assert (=> b!459444 (= e!268139 Unit!13306)))

(declare-fun b!459445 () Bool)

(declare-fun res!274670 () Bool)

(assert (=> b!459445 (=> (not res!274670) (not e!268133))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!459445 (= res!274670 (and (= (size!14038 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14037 _keys!709) (size!14038 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459446 () Bool)

(declare-fun res!274668 () Bool)

(assert (=> b!459446 (=> (not res!274668) (not e!268133))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459446 (= res!274668 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!20197 () Bool)

(declare-fun tp!38917 () Bool)

(declare-fun e!268134 () Bool)

(assert (=> mapNonEmpty!20197 (= mapRes!20197 (and tp!38917 e!268134))))

(declare-fun mapKey!20197 () (_ BitVec 32))

(declare-fun mapValue!20197 () ValueCell!5839)

(declare-fun mapRest!20197 () (Array (_ BitVec 32) ValueCell!5839))

(assert (=> mapNonEmpty!20197 (= (arr!13686 _values!549) (store mapRest!20197 mapKey!20197 mapValue!20197))))

(declare-fun b!459447 () Bool)

(declare-fun res!274664 () Bool)

(assert (=> b!459447 (=> (not res!274664) (not e!268133))))

(declare-datatypes ((List!8278 0))(
  ( (Nil!8275) (Cons!8274 (h!9130 (_ BitVec 64)) (t!14192 List!8278)) )
))
(declare-fun arrayNoDuplicates!0 (array!28495 (_ BitVec 32) List!8278) Bool)

(assert (=> b!459447 (= res!274664 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8275))))

(declare-fun b!459448 () Bool)

(assert (=> b!459448 (= e!268133 e!268136)))

(declare-fun res!274663 () Bool)

(assert (=> b!459448 (=> (not res!274663) (not e!268136))))

(declare-fun lt!207926 () array!28495)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28495 (_ BitVec 32)) Bool)

(assert (=> b!459448 (= res!274663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207926 mask!1025))))

(assert (=> b!459448 (= lt!207926 (array!28496 (store (arr!13685 _keys!709) i!563 k!794) (size!14037 _keys!709)))))

(declare-fun b!459449 () Bool)

(declare-fun res!274662 () Bool)

(assert (=> b!459449 (=> (not res!274662) (not e!268133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459449 (= res!274662 (validMask!0 mask!1025))))

(declare-fun b!459450 () Bool)

(declare-fun e!268137 () Bool)

(assert (=> b!459450 (= e!268136 e!268137)))

(declare-fun res!274665 () Bool)

(assert (=> b!459450 (=> (not res!274665) (not e!268137))))

(assert (=> b!459450 (= res!274665 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17591)

(declare-fun zeroValue!515 () V!17591)

(declare-datatypes ((tuple2!8174 0))(
  ( (tuple2!8175 (_1!4097 (_ BitVec 64)) (_2!4097 V!17591)) )
))
(declare-datatypes ((List!8279 0))(
  ( (Nil!8276) (Cons!8275 (h!9131 tuple2!8174) (t!14193 List!8279)) )
))
(declare-datatypes ((ListLongMap!7101 0))(
  ( (ListLongMap!7102 (toList!3566 List!8279)) )
))
(declare-fun lt!207929 () ListLongMap!7101)

(declare-fun lt!207930 () array!28497)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1736 (array!28495 array!28497 (_ BitVec 32) (_ BitVec 32) V!17591 V!17591 (_ BitVec 32) Int) ListLongMap!7101)

(assert (=> b!459450 (= lt!207929 (getCurrentListMapNoExtraKeys!1736 lt!207926 lt!207930 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17591)

(assert (=> b!459450 (= lt!207930 (array!28498 (store (arr!13686 _values!549) i!563 (ValueCellFull!5839 v!412)) (size!14038 _values!549)))))

(declare-fun lt!207927 () ListLongMap!7101)

(assert (=> b!459450 (= lt!207927 (getCurrentListMapNoExtraKeys!1736 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459451 () Bool)

(declare-fun res!274674 () Bool)

(assert (=> b!459451 (=> (not res!274674) (not e!268133))))

(assert (=> b!459451 (= res!274674 (or (= (select (arr!13685 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13685 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459452 () Bool)

(declare-fun res!274672 () Bool)

(assert (=> b!459452 (=> (not res!274672) (not e!268133))))

(declare-fun arrayContainsKey!0 (array!28495 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459452 (= res!274672 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!459453 () Bool)

(declare-fun e!268138 () Bool)

(assert (=> b!459453 (= e!268138 (bvslt from!863 (size!14038 _values!549)))))

(assert (=> b!459453 (not (= (select (arr!13685 _keys!709) from!863) k!794))))

(declare-fun lt!207931 () Unit!13304)

(assert (=> b!459453 (= lt!207931 e!268139)))

(declare-fun c!56414 () Bool)

(assert (=> b!459453 (= c!56414 (= (select (arr!13685 _keys!709) from!863) k!794))))

(declare-fun lt!207928 () ListLongMap!7101)

(declare-fun +!1586 (ListLongMap!7101 tuple2!8174) ListLongMap!7101)

(declare-fun get!6764 (ValueCell!5839 V!17591) V!17591)

(declare-fun dynLambda!896 (Int (_ BitVec 64)) V!17591)

(assert (=> b!459453 (= lt!207929 (+!1586 lt!207928 (tuple2!8175 (select (arr!13685 _keys!709) from!863) (get!6764 (select (arr!13686 _values!549) from!863) (dynLambda!896 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459454 () Bool)

(declare-fun Unit!13307 () Unit!13304)

(assert (=> b!459454 (= e!268139 Unit!13307)))

(declare-fun lt!207925 () Unit!13304)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28495 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13304)

(assert (=> b!459454 (= lt!207925 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459454 false))

(declare-fun b!459455 () Bool)

(declare-fun res!274675 () Bool)

(assert (=> b!459455 (=> (not res!274675) (not e!268133))))

(assert (=> b!459455 (= res!274675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459456 () Bool)

(assert (=> b!459456 (= e!268137 (not e!268138))))

(declare-fun res!274671 () Bool)

(assert (=> b!459456 (=> res!274671 e!268138)))

(assert (=> b!459456 (= res!274671 (not (validKeyInArray!0 (select (arr!13685 _keys!709) from!863))))))

(declare-fun lt!207932 () ListLongMap!7101)

(assert (=> b!459456 (= lt!207932 lt!207928)))

(declare-fun lt!207933 () ListLongMap!7101)

(assert (=> b!459456 (= lt!207928 (+!1586 lt!207933 (tuple2!8175 k!794 v!412)))))

(assert (=> b!459456 (= lt!207932 (getCurrentListMapNoExtraKeys!1736 lt!207926 lt!207930 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!459456 (= lt!207933 (getCurrentListMapNoExtraKeys!1736 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!207924 () Unit!13304)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!740 (array!28495 array!28497 (_ BitVec 32) (_ BitVec 32) V!17591 V!17591 (_ BitVec 32) (_ BitVec 64) V!17591 (_ BitVec 32) Int) Unit!13304)

(assert (=> b!459456 (= lt!207924 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!740 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!459457 () Bool)

(declare-fun res!274669 () Bool)

(assert (=> b!459457 (=> (not res!274669) (not e!268136))))

(assert (=> b!459457 (= res!274669 (arrayNoDuplicates!0 lt!207926 #b00000000000000000000000000000000 Nil!8275))))

(declare-fun b!459458 () Bool)

(assert (=> b!459458 (= e!268135 (and e!268141 mapRes!20197))))

(declare-fun condMapEmpty!20197 () Bool)

(declare-fun mapDefault!20197 () ValueCell!5839)

