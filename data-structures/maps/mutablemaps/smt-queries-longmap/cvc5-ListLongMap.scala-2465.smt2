; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38616 () Bool)

(assert start!38616)

(declare-fun b_free!9145 () Bool)

(declare-fun b_next!9145 () Bool)

(assert (=> start!38616 (= b_free!9145 (not b_next!9145))))

(declare-fun tp!32558 () Bool)

(declare-fun b_and!16549 () Bool)

(assert (=> start!38616 (= tp!32558 b_and!16549)))

(declare-fun b!399961 () Bool)

(declare-fun res!230147 () Bool)

(declare-fun e!241417 () Bool)

(assert (=> b!399961 (=> (not res!230147) (not e!241417))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399961 (= res!230147 (validKeyInArray!0 k!794))))

(declare-fun b!399962 () Bool)

(declare-fun e!241418 () Bool)

(assert (=> b!399962 (= e!241418 (not true))))

(declare-fun e!241421 () Bool)

(assert (=> b!399962 e!241421))

(declare-fun c!54599 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399962 (= c!54599 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14475 0))(
  ( (V!14476 (val!5058 Int)) )
))
(declare-fun minValue!515 () V!14475)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!14475)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!23931 0))(
  ( (array!23932 (arr!11412 (Array (_ BitVec 32) (_ BitVec 64))) (size!11764 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23931)

(declare-datatypes ((ValueCell!4670 0))(
  ( (ValueCellFull!4670 (v!7301 V!14475)) (EmptyCell!4670) )
))
(declare-datatypes ((array!23933 0))(
  ( (array!23934 (arr!11413 (Array (_ BitVec 32) ValueCell!4670)) (size!11765 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23933)

(declare-datatypes ((Unit!12075 0))(
  ( (Unit!12076) )
))
(declare-fun lt!187623 () Unit!12075)

(declare-fun v!412 () V!14475)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!300 (array!23931 array!23933 (_ BitVec 32) (_ BitVec 32) V!14475 V!14475 (_ BitVec 32) (_ BitVec 64) V!14475 (_ BitVec 32) Int) Unit!12075)

(assert (=> b!399962 (= lt!187623 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!300 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((tuple2!6636 0))(
  ( (tuple2!6637 (_1!3328 (_ BitVec 64)) (_2!3328 V!14475)) )
))
(declare-datatypes ((List!6590 0))(
  ( (Nil!6587) (Cons!6586 (h!7442 tuple2!6636) (t!11772 List!6590)) )
))
(declare-datatypes ((ListLongMap!5563 0))(
  ( (ListLongMap!5564 (toList!2797 List!6590)) )
))
(declare-fun call!28097 () ListLongMap!5563)

(declare-fun bm!28093 () Bool)

(declare-fun lt!187622 () array!23931)

(declare-fun getCurrentListMapNoExtraKeys!1013 (array!23931 array!23933 (_ BitVec 32) (_ BitVec 32) V!14475 V!14475 (_ BitVec 32) Int) ListLongMap!5563)

(assert (=> bm!28093 (= call!28097 (getCurrentListMapNoExtraKeys!1013 (ite c!54599 _keys!709 lt!187622) (ite c!54599 _values!549 (array!23934 (store (arr!11413 _values!549) i!563 (ValueCellFull!4670 v!412)) (size!11765 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399963 () Bool)

(assert (=> b!399963 (= e!241417 e!241418)))

(declare-fun res!230146 () Bool)

(assert (=> b!399963 (=> (not res!230146) (not e!241418))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23931 (_ BitVec 32)) Bool)

(assert (=> b!399963 (= res!230146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187622 mask!1025))))

(assert (=> b!399963 (= lt!187622 (array!23932 (store (arr!11412 _keys!709) i!563 k!794) (size!11764 _keys!709)))))

(declare-fun b!399964 () Bool)

(declare-fun res!230140 () Bool)

(assert (=> b!399964 (=> (not res!230140) (not e!241417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399964 (= res!230140 (validMask!0 mask!1025))))

(declare-fun b!399965 () Bool)

(declare-fun res!230148 () Bool)

(assert (=> b!399965 (=> (not res!230148) (not e!241417))))

(assert (=> b!399965 (= res!230148 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11764 _keys!709))))))

(declare-fun b!399967 () Bool)

(declare-fun e!241423 () Bool)

(declare-fun tp_is_empty!10027 () Bool)

(assert (=> b!399967 (= e!241423 tp_is_empty!10027)))

(declare-fun b!399968 () Bool)

(declare-fun e!241422 () Bool)

(assert (=> b!399968 (= e!241422 tp_is_empty!10027)))

(declare-fun mapNonEmpty!16662 () Bool)

(declare-fun mapRes!16662 () Bool)

(declare-fun tp!32559 () Bool)

(assert (=> mapNonEmpty!16662 (= mapRes!16662 (and tp!32559 e!241423))))

(declare-fun mapKey!16662 () (_ BitVec 32))

(declare-fun mapValue!16662 () ValueCell!4670)

(declare-fun mapRest!16662 () (Array (_ BitVec 32) ValueCell!4670))

(assert (=> mapNonEmpty!16662 (= (arr!11413 _values!549) (store mapRest!16662 mapKey!16662 mapValue!16662))))

(declare-fun b!399969 () Bool)

(declare-fun call!28096 () ListLongMap!5563)

(assert (=> b!399969 (= e!241421 (= call!28097 call!28096))))

(declare-fun b!399970 () Bool)

(declare-fun res!230138 () Bool)

(assert (=> b!399970 (=> (not res!230138) (not e!241417))))

(declare-fun arrayContainsKey!0 (array!23931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399970 (= res!230138 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!399966 () Bool)

(declare-fun res!230142 () Bool)

(assert (=> b!399966 (=> (not res!230142) (not e!241417))))

(declare-datatypes ((List!6591 0))(
  ( (Nil!6588) (Cons!6587 (h!7443 (_ BitVec 64)) (t!11773 List!6591)) )
))
(declare-fun arrayNoDuplicates!0 (array!23931 (_ BitVec 32) List!6591) Bool)

(assert (=> b!399966 (= res!230142 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6588))))

(declare-fun res!230145 () Bool)

(assert (=> start!38616 (=> (not res!230145) (not e!241417))))

(assert (=> start!38616 (= res!230145 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11764 _keys!709))))))

(assert (=> start!38616 e!241417))

(assert (=> start!38616 tp_is_empty!10027))

(assert (=> start!38616 tp!32558))

(assert (=> start!38616 true))

(declare-fun e!241419 () Bool)

(declare-fun array_inv!8352 (array!23933) Bool)

(assert (=> start!38616 (and (array_inv!8352 _values!549) e!241419)))

(declare-fun array_inv!8353 (array!23931) Bool)

(assert (=> start!38616 (array_inv!8353 _keys!709)))

(declare-fun b!399971 () Bool)

(assert (=> b!399971 (= e!241419 (and e!241422 mapRes!16662))))

(declare-fun condMapEmpty!16662 () Bool)

(declare-fun mapDefault!16662 () ValueCell!4670)

