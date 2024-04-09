; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39204 () Bool)

(assert start!39204)

(declare-fun b_free!9463 () Bool)

(declare-fun b_next!9463 () Bool)

(assert (=> start!39204 (= b_free!9463 (not b_next!9463))))

(declare-fun tp!33917 () Bool)

(declare-fun b_and!16867 () Bool)

(assert (=> start!39204 (= tp!33917 b_and!16867)))

(declare-fun res!239933 () Bool)

(declare-fun e!246954 () Bool)

(assert (=> start!39204 (=> (not res!239933) (not e!246954))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25069 0))(
  ( (array!25070 (arr!11981 (Array (_ BitVec 32) (_ BitVec 64))) (size!12333 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25069)

(assert (=> start!39204 (= res!239933 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12333 _keys!709))))))

(assert (=> start!39204 e!246954))

(declare-fun tp_is_empty!10615 () Bool)

(assert (=> start!39204 tp_is_empty!10615))

(assert (=> start!39204 tp!33917))

(assert (=> start!39204 true))

(declare-datatypes ((V!15259 0))(
  ( (V!15260 (val!5352 Int)) )
))
(declare-datatypes ((ValueCell!4964 0))(
  ( (ValueCellFull!4964 (v!7595 V!15259)) (EmptyCell!4964) )
))
(declare-datatypes ((array!25071 0))(
  ( (array!25072 (arr!11982 (Array (_ BitVec 32) ValueCell!4964)) (size!12334 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25071)

(declare-fun e!246959 () Bool)

(declare-fun array_inv!8736 (array!25071) Bool)

(assert (=> start!39204 (and (array_inv!8736 _values!549) e!246959)))

(declare-fun array_inv!8737 (array!25069) Bool)

(assert (=> start!39204 (array_inv!8737 _keys!709)))

(declare-fun mapNonEmpty!17544 () Bool)

(declare-fun mapRes!17544 () Bool)

(declare-fun tp!33918 () Bool)

(declare-fun e!246961 () Bool)

(assert (=> mapNonEmpty!17544 (= mapRes!17544 (and tp!33918 e!246961))))

(declare-fun mapKey!17544 () (_ BitVec 32))

(declare-fun mapRest!17544 () (Array (_ BitVec 32) ValueCell!4964))

(declare-fun mapValue!17544 () ValueCell!4964)

(assert (=> mapNonEmpty!17544 (= (arr!11982 _values!549) (store mapRest!17544 mapKey!17544 mapValue!17544))))

(declare-fun b!412860 () Bool)

(declare-fun e!246957 () Bool)

(declare-datatypes ((tuple2!6872 0))(
  ( (tuple2!6873 (_1!3446 (_ BitVec 64)) (_2!3446 V!15259)) )
))
(declare-datatypes ((List!6934 0))(
  ( (Nil!6931) (Cons!6930 (h!7786 tuple2!6872) (t!12116 List!6934)) )
))
(declare-datatypes ((ListLongMap!5799 0))(
  ( (ListLongMap!5800 (toList!2915 List!6934)) )
))
(declare-fun call!28564 () ListLongMap!5799)

(declare-fun call!28565 () ListLongMap!5799)

(assert (=> b!412860 (= e!246957 (= call!28564 call!28565))))

(declare-fun b!412861 () Bool)

(declare-fun e!246956 () Bool)

(assert (=> b!412861 (= e!246954 e!246956)))

(declare-fun res!239924 () Bool)

(assert (=> b!412861 (=> (not res!239924) (not e!246956))))

(declare-fun lt!189584 () array!25069)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25069 (_ BitVec 32)) Bool)

(assert (=> b!412861 (= res!239924 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189584 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412861 (= lt!189584 (array!25070 (store (arr!11981 _keys!709) i!563 k!794) (size!12333 _keys!709)))))

(declare-fun b!412862 () Bool)

(declare-fun res!239923 () Bool)

(assert (=> b!412862 (=> (not res!239923) (not e!246954))))

(assert (=> b!412862 (= res!239923 (or (= (select (arr!11981 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11981 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!189585 () array!25071)

(declare-fun zeroValue!515 () V!15259)

(declare-fun c!54833 () Bool)

(declare-fun minValue!515 () V!15259)

(declare-fun bm!28561 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1125 (array!25069 array!25071 (_ BitVec 32) (_ BitVec 32) V!15259 V!15259 (_ BitVec 32) Int) ListLongMap!5799)

(assert (=> bm!28561 (= call!28564 (getCurrentListMapNoExtraKeys!1125 (ite c!54833 _keys!709 lt!189584) (ite c!54833 _values!549 lt!189585) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!412863 () Bool)

(declare-fun v!412 () V!15259)

(declare-fun +!1138 (ListLongMap!5799 tuple2!6872) ListLongMap!5799)

(assert (=> b!412863 (= e!246957 (= call!28565 (+!1138 call!28564 (tuple2!6873 k!794 v!412))))))

(declare-fun b!412864 () Bool)

(declare-fun res!239922 () Bool)

(assert (=> b!412864 (=> (not res!239922) (not e!246954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412864 (= res!239922 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!17544 () Bool)

(assert (=> mapIsEmpty!17544 mapRes!17544))

(declare-fun b!412865 () Bool)

(declare-fun e!246960 () Bool)

(assert (=> b!412865 (= e!246959 (and e!246960 mapRes!17544))))

(declare-fun condMapEmpty!17544 () Bool)

(declare-fun mapDefault!17544 () ValueCell!4964)

