; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70748 () Bool)

(assert start!70748)

(declare-fun b_free!12997 () Bool)

(declare-fun b_next!12997 () Bool)

(assert (=> start!70748 (= b_free!12997 (not b_next!12997))))

(declare-fun tp!45733 () Bool)

(declare-fun b_and!21877 () Bool)

(assert (=> start!70748 (= tp!45733 b_and!21877)))

(declare-fun b!821322 () Bool)

(declare-fun res!560396 () Bool)

(declare-fun e!456497 () Bool)

(assert (=> b!821322 (=> (not res!560396) (not e!456497))))

(declare-datatypes ((array!45570 0))(
  ( (array!45571 (arr!21832 (Array (_ BitVec 32) (_ BitVec 64))) (size!22253 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45570)

(declare-datatypes ((List!15618 0))(
  ( (Nil!15615) (Cons!15614 (h!16743 (_ BitVec 64)) (t!21961 List!15618)) )
))
(declare-fun arrayNoDuplicates!0 (array!45570 (_ BitVec 32) List!15618) Bool)

(assert (=> b!821322 (= res!560396 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15615))))

(declare-fun mapNonEmpty!23668 () Bool)

(declare-fun mapRes!23668 () Bool)

(declare-fun tp!45732 () Bool)

(declare-fun e!456502 () Bool)

(assert (=> mapNonEmpty!23668 (= mapRes!23668 (and tp!45732 e!456502))))

(declare-fun mapKey!23668 () (_ BitVec 32))

(declare-datatypes ((V!24611 0))(
  ( (V!24612 (val!7401 Int)) )
))
(declare-datatypes ((ValueCell!6938 0))(
  ( (ValueCellFull!6938 (v!9828 V!24611)) (EmptyCell!6938) )
))
(declare-datatypes ((array!45572 0))(
  ( (array!45573 (arr!21833 (Array (_ BitVec 32) ValueCell!6938)) (size!22254 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45572)

(declare-fun mapValue!23668 () ValueCell!6938)

(declare-fun mapRest!23668 () (Array (_ BitVec 32) ValueCell!6938))

(assert (=> mapNonEmpty!23668 (= (arr!21833 _values!788) (store mapRest!23668 mapKey!23668 mapValue!23668))))

(declare-fun mapIsEmpty!23668 () Bool)

(assert (=> mapIsEmpty!23668 mapRes!23668))

(declare-fun b!821323 () Bool)

(declare-fun e!456500 () Bool)

(assert (=> b!821323 (= e!456500 true)))

(declare-fun zeroValueBefore!34 () V!24611)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24611)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-datatypes ((tuple2!9758 0))(
  ( (tuple2!9759 (_1!4889 (_ BitVec 64)) (_2!4889 V!24611)) )
))
(declare-datatypes ((List!15619 0))(
  ( (Nil!15616) (Cons!15615 (h!16744 tuple2!9758) (t!21962 List!15619)) )
))
(declare-datatypes ((ListLongMap!8595 0))(
  ( (ListLongMap!8596 (toList!4313 List!15619)) )
))
(declare-fun lt!369190 () ListLongMap!8595)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2448 (array!45570 array!45572 (_ BitVec 32) (_ BitVec 32) V!24611 V!24611 (_ BitVec 32) Int) ListLongMap!8595)

(assert (=> b!821323 (= lt!369190 (getCurrentListMap!2448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821324 () Bool)

(declare-fun e!456501 () Bool)

(declare-fun e!456499 () Bool)

(assert (=> b!821324 (= e!456501 (and e!456499 mapRes!23668))))

(declare-fun condMapEmpty!23668 () Bool)

(declare-fun mapDefault!23668 () ValueCell!6938)

