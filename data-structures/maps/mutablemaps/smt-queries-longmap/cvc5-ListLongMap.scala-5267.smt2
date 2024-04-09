; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70760 () Bool)

(assert start!70760)

(declare-fun b_free!13009 () Bool)

(declare-fun b_next!13009 () Bool)

(assert (=> start!70760 (= b_free!13009 (not b_next!13009))))

(declare-fun tp!45768 () Bool)

(declare-fun b_and!21889 () Bool)

(assert (=> start!70760 (= tp!45768 b_and!21889)))

(declare-fun b!821466 () Bool)

(declare-fun e!456608 () Bool)

(assert (=> b!821466 (= e!456608 true)))

(declare-datatypes ((V!24627 0))(
  ( (V!24628 (val!7407 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24627)

(declare-datatypes ((array!45594 0))(
  ( (array!45595 (arr!21844 (Array (_ BitVec 32) (_ BitVec 64))) (size!22265 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45594)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24627)

(declare-datatypes ((ValueCell!6944 0))(
  ( (ValueCellFull!6944 (v!9834 V!24627)) (EmptyCell!6944) )
))
(declare-datatypes ((array!45596 0))(
  ( (array!45597 (arr!21845 (Array (_ BitVec 32) ValueCell!6944)) (size!22266 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45596)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!9770 0))(
  ( (tuple2!9771 (_1!4895 (_ BitVec 64)) (_2!4895 V!24627)) )
))
(declare-datatypes ((List!15630 0))(
  ( (Nil!15627) (Cons!15626 (h!16755 tuple2!9770) (t!21973 List!15630)) )
))
(declare-datatypes ((ListLongMap!8607 0))(
  ( (ListLongMap!8608 (toList!4319 List!15630)) )
))
(declare-fun lt!369262 () ListLongMap!8607)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2454 (array!45594 array!45596 (_ BitVec 32) (_ BitVec 32) V!24627 V!24627 (_ BitVec 32) Int) ListLongMap!8607)

(assert (=> b!821466 (= lt!369262 (getCurrentListMap!2454 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821467 () Bool)

(declare-fun e!456610 () Bool)

(declare-fun tp_is_empty!14719 () Bool)

(assert (=> b!821467 (= e!456610 tp_is_empty!14719)))

(declare-fun b!821469 () Bool)

(declare-fun e!456607 () Bool)

(assert (=> b!821469 (= e!456607 tp_is_empty!14719)))

(declare-fun b!821470 () Bool)

(declare-fun res!560487 () Bool)

(declare-fun e!456606 () Bool)

(assert (=> b!821470 (=> (not res!560487) (not e!456606))))

(declare-datatypes ((List!15631 0))(
  ( (Nil!15628) (Cons!15627 (h!16756 (_ BitVec 64)) (t!21974 List!15631)) )
))
(declare-fun arrayNoDuplicates!0 (array!45594 (_ BitVec 32) List!15631) Bool)

(assert (=> b!821470 (= res!560487 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15628))))

(declare-fun b!821471 () Bool)

(declare-fun res!560486 () Bool)

(assert (=> b!821471 (=> (not res!560486) (not e!456606))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45594 (_ BitVec 32)) Bool)

(assert (=> b!821471 (= res!560486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23686 () Bool)

(declare-fun mapRes!23686 () Bool)

(assert (=> mapIsEmpty!23686 mapRes!23686))

(declare-fun mapNonEmpty!23686 () Bool)

(declare-fun tp!45769 () Bool)

(assert (=> mapNonEmpty!23686 (= mapRes!23686 (and tp!45769 e!456607))))

(declare-fun mapKey!23686 () (_ BitVec 32))

(declare-fun mapRest!23686 () (Array (_ BitVec 32) ValueCell!6944))

(declare-fun mapValue!23686 () ValueCell!6944)

(assert (=> mapNonEmpty!23686 (= (arr!21845 _values!788) (store mapRest!23686 mapKey!23686 mapValue!23686))))

(declare-fun b!821472 () Bool)

(declare-fun e!456605 () Bool)

(assert (=> b!821472 (= e!456605 (and e!456610 mapRes!23686))))

(declare-fun condMapEmpty!23686 () Bool)

(declare-fun mapDefault!23686 () ValueCell!6944)

