; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39760 () Bool)

(assert start!39760)

(declare-fun b_free!10019 () Bool)

(declare-fun b_next!10019 () Bool)

(assert (=> start!39760 (= b_free!10019 (not b_next!10019))))

(declare-fun tp!35586 () Bool)

(declare-fun b_and!17715 () Bool)

(assert (=> start!39760 (= tp!35586 b_and!17715)))

(declare-fun b!427742 () Bool)

(declare-fun res!251060 () Bool)

(declare-fun e!253566 () Bool)

(assert (=> b!427742 (=> (not res!251060) (not e!253566))))

(declare-datatypes ((array!26161 0))(
  ( (array!26162 (arr!12527 (Array (_ BitVec 32) (_ BitVec 64))) (size!12879 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26161)

(declare-datatypes ((List!7392 0))(
  ( (Nil!7389) (Cons!7388 (h!8244 (_ BitVec 64)) (t!12868 List!7392)) )
))
(declare-fun arrayNoDuplicates!0 (array!26161 (_ BitVec 32) List!7392) Bool)

(assert (=> b!427742 (= res!251060 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7389))))

(declare-fun b!427743 () Bool)

(declare-fun res!251066 () Bool)

(assert (=> b!427743 (=> (not res!251066) (not e!253566))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26161 (_ BitVec 32)) Bool)

(assert (=> b!427743 (= res!251066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427744 () Bool)

(declare-fun res!251071 () Bool)

(assert (=> b!427744 (=> (not res!251071) (not e!253566))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427744 (= res!251071 (validKeyInArray!0 k!794))))

(declare-fun b!427745 () Bool)

(declare-fun e!253565 () Bool)

(declare-fun tp_is_empty!11171 () Bool)

(assert (=> b!427745 (= e!253565 tp_is_empty!11171)))

(declare-fun mapIsEmpty!18378 () Bool)

(declare-fun mapRes!18378 () Bool)

(assert (=> mapIsEmpty!18378 mapRes!18378))

(declare-fun b!427746 () Bool)

(declare-fun e!253563 () Bool)

(declare-fun e!253564 () Bool)

(assert (=> b!427746 (= e!253563 (not e!253564))))

(declare-fun res!251070 () Bool)

(assert (=> b!427746 (=> res!251070 e!253564)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!427746 (= res!251070 (not (validKeyInArray!0 (select (arr!12527 _keys!709) from!863))))))

(declare-datatypes ((V!15999 0))(
  ( (V!16000 (val!5630 Int)) )
))
(declare-datatypes ((tuple2!7342 0))(
  ( (tuple2!7343 (_1!3681 (_ BitVec 64)) (_2!3681 V!15999)) )
))
(declare-datatypes ((List!7393 0))(
  ( (Nil!7390) (Cons!7389 (h!8245 tuple2!7342) (t!12869 List!7393)) )
))
(declare-datatypes ((ListLongMap!6269 0))(
  ( (ListLongMap!6270 (toList!3150 List!7393)) )
))
(declare-fun lt!195480 () ListLongMap!6269)

(declare-fun lt!195483 () ListLongMap!6269)

(assert (=> b!427746 (= lt!195480 lt!195483)))

(declare-fun v!412 () V!15999)

(declare-fun lt!195478 () ListLongMap!6269)

(declare-fun +!1303 (ListLongMap!6269 tuple2!7342) ListLongMap!6269)

(assert (=> b!427746 (= lt!195483 (+!1303 lt!195478 (tuple2!7343 k!794 v!412)))))

(declare-fun minValue!515 () V!15999)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!195479 () array!26161)

(declare-fun zeroValue!515 () V!15999)

(declare-datatypes ((ValueCell!5242 0))(
  ( (ValueCellFull!5242 (v!7873 V!15999)) (EmptyCell!5242) )
))
(declare-datatypes ((array!26163 0))(
  ( (array!26164 (arr!12528 (Array (_ BitVec 32) ValueCell!5242)) (size!12880 (_ BitVec 32))) )
))
(declare-fun lt!195476 () array!26163)

(declare-fun getCurrentListMapNoExtraKeys!1350 (array!26161 array!26163 (_ BitVec 32) (_ BitVec 32) V!15999 V!15999 (_ BitVec 32) Int) ListLongMap!6269)

(assert (=> b!427746 (= lt!195480 (getCurrentListMapNoExtraKeys!1350 lt!195479 lt!195476 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun _values!549 () array!26163)

(assert (=> b!427746 (= lt!195478 (getCurrentListMapNoExtraKeys!1350 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12507 0))(
  ( (Unit!12508) )
))
(declare-fun lt!195477 () Unit!12507)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!504 (array!26161 array!26163 (_ BitVec 32) (_ BitVec 32) V!15999 V!15999 (_ BitVec 32) (_ BitVec 64) V!15999 (_ BitVec 32) Int) Unit!12507)

(assert (=> b!427746 (= lt!195477 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!504 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427747 () Bool)

(declare-fun res!251061 () Bool)

(assert (=> b!427747 (=> (not res!251061) (not e!253566))))

(assert (=> b!427747 (= res!251061 (or (= (select (arr!12527 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12527 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18378 () Bool)

(declare-fun tp!35585 () Bool)

(assert (=> mapNonEmpty!18378 (= mapRes!18378 (and tp!35585 e!253565))))

(declare-fun mapKey!18378 () (_ BitVec 32))

(declare-fun mapRest!18378 () (Array (_ BitVec 32) ValueCell!5242))

(declare-fun mapValue!18378 () ValueCell!5242)

(assert (=> mapNonEmpty!18378 (= (arr!12528 _values!549) (store mapRest!18378 mapKey!18378 mapValue!18378))))

(declare-fun res!251068 () Bool)

(assert (=> start!39760 (=> (not res!251068) (not e!253566))))

(assert (=> start!39760 (= res!251068 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12879 _keys!709))))))

(assert (=> start!39760 e!253566))

(assert (=> start!39760 tp_is_empty!11171))

(assert (=> start!39760 tp!35586))

(assert (=> start!39760 true))

(declare-fun e!253567 () Bool)

(declare-fun array_inv!9116 (array!26163) Bool)

(assert (=> start!39760 (and (array_inv!9116 _values!549) e!253567)))

(declare-fun array_inv!9117 (array!26161) Bool)

(assert (=> start!39760 (array_inv!9117 _keys!709)))

(declare-fun b!427748 () Bool)

(declare-fun res!251063 () Bool)

(assert (=> b!427748 (=> (not res!251063) (not e!253566))))

(declare-fun arrayContainsKey!0 (array!26161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427748 (= res!251063 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!427749 () Bool)

(declare-fun res!251065 () Bool)

(assert (=> b!427749 (=> (not res!251065) (not e!253566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427749 (= res!251065 (validMask!0 mask!1025))))

(declare-fun b!427750 () Bool)

(declare-fun res!251064 () Bool)

(declare-fun e!253569 () Bool)

(assert (=> b!427750 (=> (not res!251064) (not e!253569))))

(assert (=> b!427750 (= res!251064 (arrayNoDuplicates!0 lt!195479 #b00000000000000000000000000000000 Nil!7389))))

(declare-fun b!427751 () Bool)

(declare-fun res!251069 () Bool)

(assert (=> b!427751 (=> (not res!251069) (not e!253569))))

(assert (=> b!427751 (= res!251069 (bvsle from!863 i!563))))

(declare-fun b!427752 () Bool)

(assert (=> b!427752 (= e!253566 e!253569)))

(declare-fun res!251062 () Bool)

(assert (=> b!427752 (=> (not res!251062) (not e!253569))))

(assert (=> b!427752 (= res!251062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195479 mask!1025))))

(assert (=> b!427752 (= lt!195479 (array!26162 (store (arr!12527 _keys!709) i!563 k!794) (size!12879 _keys!709)))))

(declare-fun b!427753 () Bool)

(declare-fun res!251073 () Bool)

(assert (=> b!427753 (=> (not res!251073) (not e!253566))))

(assert (=> b!427753 (= res!251073 (and (= (size!12880 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12879 _keys!709) (size!12880 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!427754 () Bool)

(declare-fun e!253568 () Bool)

(assert (=> b!427754 (= e!253568 tp_is_empty!11171)))

(declare-fun b!427755 () Bool)

(assert (=> b!427755 (= e!253564 true)))

(declare-fun lt!195481 () ListLongMap!6269)

(declare-fun get!6209 (ValueCell!5242 V!15999) V!15999)

(declare-fun dynLambda!750 (Int (_ BitVec 64)) V!15999)

(assert (=> b!427755 (= lt!195481 (+!1303 lt!195483 (tuple2!7343 (select (arr!12527 _keys!709) from!863) (get!6209 (select (arr!12528 _values!549) from!863) (dynLambda!750 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!427756 () Bool)

(assert (=> b!427756 (= e!253567 (and e!253568 mapRes!18378))))

(declare-fun condMapEmpty!18378 () Bool)

(declare-fun mapDefault!18378 () ValueCell!5242)

