; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70758 () Bool)

(assert start!70758)

(declare-fun b_free!13007 () Bool)

(declare-fun b_next!13007 () Bool)

(assert (=> start!70758 (= b_free!13007 (not b_next!13007))))

(declare-fun tp!45762 () Bool)

(declare-fun b_and!21887 () Bool)

(assert (=> start!70758 (= tp!45762 b_and!21887)))

(declare-fun mapIsEmpty!23683 () Bool)

(declare-fun mapRes!23683 () Bool)

(assert (=> mapIsEmpty!23683 mapRes!23683))

(declare-fun res!560472 () Bool)

(declare-fun e!456591 () Bool)

(assert (=> start!70758 (=> (not res!560472) (not e!456591))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70758 (= res!560472 (validMask!0 mask!1312))))

(assert (=> start!70758 e!456591))

(declare-fun tp_is_empty!14717 () Bool)

(assert (=> start!70758 tp_is_empty!14717))

(declare-datatypes ((array!45590 0))(
  ( (array!45591 (arr!21842 (Array (_ BitVec 32) (_ BitVec 64))) (size!22263 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45590)

(declare-fun array_inv!17423 (array!45590) Bool)

(assert (=> start!70758 (array_inv!17423 _keys!976)))

(assert (=> start!70758 true))

(declare-datatypes ((V!24623 0))(
  ( (V!24624 (val!7406 Int)) )
))
(declare-datatypes ((ValueCell!6943 0))(
  ( (ValueCellFull!6943 (v!9833 V!24623)) (EmptyCell!6943) )
))
(declare-datatypes ((array!45592 0))(
  ( (array!45593 (arr!21843 (Array (_ BitVec 32) ValueCell!6943)) (size!22264 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45592)

(declare-fun e!456592 () Bool)

(declare-fun array_inv!17424 (array!45592) Bool)

(assert (=> start!70758 (and (array_inv!17424 _values!788) e!456592)))

(assert (=> start!70758 tp!45762))

(declare-fun b!821442 () Bool)

(declare-fun e!456590 () Bool)

(assert (=> b!821442 (= e!456590 true)))

(declare-fun zeroValueBefore!34 () V!24623)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24623)

(declare-datatypes ((tuple2!9768 0))(
  ( (tuple2!9769 (_1!4894 (_ BitVec 64)) (_2!4894 V!24623)) )
))
(declare-datatypes ((List!15628 0))(
  ( (Nil!15625) (Cons!15624 (h!16753 tuple2!9768) (t!21971 List!15628)) )
))
(declare-datatypes ((ListLongMap!8605 0))(
  ( (ListLongMap!8606 (toList!4318 List!15628)) )
))
(declare-fun lt!369249 () ListLongMap!8605)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2453 (array!45590 array!45592 (_ BitVec 32) (_ BitVec 32) V!24623 V!24623 (_ BitVec 32) Int) ListLongMap!8605)

(assert (=> b!821442 (= lt!369249 (getCurrentListMap!2453 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821443 () Bool)

(declare-fun res!560471 () Bool)

(assert (=> b!821443 (=> (not res!560471) (not e!456591))))

(declare-datatypes ((List!15629 0))(
  ( (Nil!15626) (Cons!15625 (h!16754 (_ BitVec 64)) (t!21972 List!15629)) )
))
(declare-fun arrayNoDuplicates!0 (array!45590 (_ BitVec 32) List!15629) Bool)

(assert (=> b!821443 (= res!560471 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15626))))

(declare-fun mapNonEmpty!23683 () Bool)

(declare-fun tp!45763 () Bool)

(declare-fun e!456588 () Bool)

(assert (=> mapNonEmpty!23683 (= mapRes!23683 (and tp!45763 e!456588))))

(declare-fun mapKey!23683 () (_ BitVec 32))

(declare-fun mapValue!23683 () ValueCell!6943)

(declare-fun mapRest!23683 () (Array (_ BitVec 32) ValueCell!6943))

(assert (=> mapNonEmpty!23683 (= (arr!21843 _values!788) (store mapRest!23683 mapKey!23683 mapValue!23683))))

(declare-fun b!821444 () Bool)

(declare-fun e!456587 () Bool)

(assert (=> b!821444 (= e!456592 (and e!456587 mapRes!23683))))

(declare-fun condMapEmpty!23683 () Bool)

(declare-fun mapDefault!23683 () ValueCell!6943)

