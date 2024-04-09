; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40814 () Bool)

(assert start!40814)

(declare-fun b_free!10795 () Bool)

(declare-fun b_next!10795 () Bool)

(assert (=> start!40814 (= b_free!10795 (not b_next!10795))))

(declare-fun tp!38208 () Bool)

(declare-fun b_and!18895 () Bool)

(assert (=> start!40814 (= tp!38208 b_and!18895)))

(declare-fun b!452630 () Bool)

(declare-fun res!269715 () Bool)

(declare-fun e!264980 () Bool)

(assert (=> b!452630 (=> (not res!269715) (not e!264980))))

(declare-datatypes ((array!28033 0))(
  ( (array!28034 (arr!13458 (Array (_ BitVec 32) (_ BitVec 64))) (size!13810 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28033)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28033 (_ BitVec 32)) Bool)

(assert (=> b!452630 (= res!269715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452631 () Bool)

(declare-fun e!264981 () Bool)

(declare-fun e!264985 () Bool)

(assert (=> b!452631 (= e!264981 (not e!264985))))

(declare-fun res!269726 () Bool)

(assert (=> b!452631 (=> res!269726 e!264985)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452631 (= res!269726 (validKeyInArray!0 (select (arr!13458 _keys!709) from!863)))))

(declare-fun e!264986 () Bool)

(assert (=> b!452631 e!264986))

(declare-fun c!56066 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452631 (= c!56066 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!17283 0))(
  ( (V!17284 (val!6111 Int)) )
))
(declare-fun minValue!515 () V!17283)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5723 0))(
  ( (ValueCellFull!5723 (v!8366 V!17283)) (EmptyCell!5723) )
))
(declare-datatypes ((array!28035 0))(
  ( (array!28036 (arr!13459 (Array (_ BitVec 32) ValueCell!5723)) (size!13811 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28035)

(declare-fun zeroValue!515 () V!17283)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17283)

(declare-datatypes ((Unit!13183 0))(
  ( (Unit!13184) )
))
(declare-fun lt!205415 () Unit!13183)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!708 (array!28033 array!28035 (_ BitVec 32) (_ BitVec 32) V!17283 V!17283 (_ BitVec 32) (_ BitVec 64) V!17283 (_ BitVec 32) Int) Unit!13183)

(assert (=> b!452631 (= lt!205415 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!708 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452633 () Bool)

(assert (=> b!452633 (= e!264985 true)))

(declare-datatypes ((tuple2!7994 0))(
  ( (tuple2!7995 (_1!4007 (_ BitVec 64)) (_2!4007 V!17283)) )
))
(declare-datatypes ((List!8096 0))(
  ( (Nil!8093) (Cons!8092 (h!8948 tuple2!7994) (t!13922 List!8096)) )
))
(declare-datatypes ((ListLongMap!6921 0))(
  ( (ListLongMap!6922 (toList!3476 List!8096)) )
))
(declare-fun lt!205417 () ListLongMap!6921)

(declare-fun lt!205425 () V!17283)

(declare-fun lt!205420 () tuple2!7994)

(declare-fun +!1541 (ListLongMap!6921 tuple2!7994) ListLongMap!6921)

(assert (=> b!452633 (= (+!1541 lt!205417 lt!205420) (+!1541 (+!1541 lt!205417 (tuple2!7995 k!794 lt!205425)) lt!205420))))

(declare-fun lt!205418 () V!17283)

(assert (=> b!452633 (= lt!205420 (tuple2!7995 k!794 lt!205418))))

(declare-fun lt!205416 () Unit!13183)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!86 (ListLongMap!6921 (_ BitVec 64) V!17283 V!17283) Unit!13183)

(assert (=> b!452633 (= lt!205416 (addSameAsAddTwiceSameKeyDiffValues!86 lt!205417 k!794 lt!205425 lt!205418))))

(declare-fun lt!205419 () V!17283)

(declare-fun get!6647 (ValueCell!5723 V!17283) V!17283)

(assert (=> b!452633 (= lt!205425 (get!6647 (select (arr!13459 _values!549) from!863) lt!205419))))

(declare-fun lt!205421 () array!28033)

(declare-fun lt!205422 () ListLongMap!6921)

(assert (=> b!452633 (= lt!205422 (+!1541 lt!205417 (tuple2!7995 (select (arr!13458 lt!205421) from!863) lt!205418)))))

(assert (=> b!452633 (= lt!205418 (get!6647 (select (store (arr!13459 _values!549) i!563 (ValueCellFull!5723 v!412)) from!863) lt!205419))))

(declare-fun dynLambda!864 (Int (_ BitVec 64)) V!17283)

(assert (=> b!452633 (= lt!205419 (dynLambda!864 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!205424 () array!28035)

(declare-fun getCurrentListMapNoExtraKeys!1652 (array!28033 array!28035 (_ BitVec 32) (_ BitVec 32) V!17283 V!17283 (_ BitVec 32) Int) ListLongMap!6921)

(assert (=> b!452633 (= lt!205417 (getCurrentListMapNoExtraKeys!1652 lt!205421 lt!205424 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19836 () Bool)

(declare-fun mapRes!19836 () Bool)

(assert (=> mapIsEmpty!19836 mapRes!19836))

(declare-fun b!452634 () Bool)

(declare-fun res!269717 () Bool)

(declare-fun e!264982 () Bool)

(assert (=> b!452634 (=> (not res!269717) (not e!264982))))

(assert (=> b!452634 (= res!269717 (bvsle from!863 i!563))))

(declare-fun b!452635 () Bool)

(declare-fun e!264987 () Bool)

(declare-fun tp_is_empty!12133 () Bool)

(assert (=> b!452635 (= e!264987 tp_is_empty!12133)))

(declare-fun b!452636 () Bool)

(declare-fun res!269724 () Bool)

(assert (=> b!452636 (=> (not res!269724) (not e!264980))))

(declare-datatypes ((List!8097 0))(
  ( (Nil!8094) (Cons!8093 (h!8949 (_ BitVec 64)) (t!13923 List!8097)) )
))
(declare-fun arrayNoDuplicates!0 (array!28033 (_ BitVec 32) List!8097) Bool)

(assert (=> b!452636 (= res!269724 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8094))))

(declare-fun res!269723 () Bool)

(assert (=> start!40814 (=> (not res!269723) (not e!264980))))

(assert (=> start!40814 (= res!269723 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13810 _keys!709))))))

(assert (=> start!40814 e!264980))

(assert (=> start!40814 tp_is_empty!12133))

(assert (=> start!40814 tp!38208))

(assert (=> start!40814 true))

(declare-fun e!264983 () Bool)

(declare-fun array_inv!9742 (array!28035) Bool)

(assert (=> start!40814 (and (array_inv!9742 _values!549) e!264983)))

(declare-fun array_inv!9743 (array!28033) Bool)

(assert (=> start!40814 (array_inv!9743 _keys!709)))

(declare-fun call!29995 () ListLongMap!6921)

(declare-fun b!452632 () Bool)

(declare-fun call!29996 () ListLongMap!6921)

(assert (=> b!452632 (= e!264986 (= call!29996 (+!1541 call!29995 (tuple2!7995 k!794 v!412))))))

(declare-fun b!452637 () Bool)

(declare-fun res!269720 () Bool)

(assert (=> b!452637 (=> (not res!269720) (not e!264980))))

(assert (=> b!452637 (= res!269720 (or (= (select (arr!13458 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13458 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452638 () Bool)

(declare-fun e!264979 () Bool)

(assert (=> b!452638 (= e!264983 (and e!264979 mapRes!19836))))

(declare-fun condMapEmpty!19836 () Bool)

(declare-fun mapDefault!19836 () ValueCell!5723)

