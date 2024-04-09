; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70296 () Bool)

(assert start!70296)

(declare-fun b_free!12647 () Bool)

(declare-fun b_next!12647 () Bool)

(assert (=> start!70296 (= b_free!12647 (not b_next!12647))))

(declare-fun tp!44665 () Bool)

(declare-fun b_and!21465 () Bool)

(assert (=> start!70296 (= tp!44665 b_and!21465)))

(declare-fun res!557385 () Bool)

(declare-fun e!452786 () Bool)

(assert (=> start!70296 (=> (not res!557385) (not e!452786))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70296 (= res!557385 (validMask!0 mask!1312))))

(assert (=> start!70296 e!452786))

(declare-fun tp_is_empty!14357 () Bool)

(assert (=> start!70296 tp_is_empty!14357))

(declare-datatypes ((array!44896 0))(
  ( (array!44897 (arr!21501 (Array (_ BitVec 32) (_ BitVec 64))) (size!21922 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44896)

(declare-fun array_inv!17183 (array!44896) Bool)

(assert (=> start!70296 (array_inv!17183 _keys!976)))

(assert (=> start!70296 true))

(declare-datatypes ((V!24143 0))(
  ( (V!24144 (val!7226 Int)) )
))
(declare-datatypes ((ValueCell!6763 0))(
  ( (ValueCellFull!6763 (v!9650 V!24143)) (EmptyCell!6763) )
))
(declare-datatypes ((array!44898 0))(
  ( (array!44899 (arr!21502 (Array (_ BitVec 32) ValueCell!6763)) (size!21923 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44898)

(declare-fun e!452787 () Bool)

(declare-fun array_inv!17184 (array!44898) Bool)

(assert (=> start!70296 (and (array_inv!17184 _values!788) e!452787)))

(assert (=> start!70296 tp!44665))

(declare-fun b!816232 () Bool)

(declare-fun e!452789 () Bool)

(assert (=> b!816232 (= e!452789 tp_is_empty!14357)))

(declare-fun b!816233 () Bool)

(declare-fun res!557386 () Bool)

(assert (=> b!816233 (=> (not res!557386) (not e!452786))))

(declare-datatypes ((List!15366 0))(
  ( (Nil!15363) (Cons!15362 (h!16491 (_ BitVec 64)) (t!21697 List!15366)) )
))
(declare-fun arrayNoDuplicates!0 (array!44896 (_ BitVec 32) List!15366) Bool)

(assert (=> b!816233 (= res!557386 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15363))))

(declare-fun b!816234 () Bool)

(declare-fun e!452785 () Bool)

(assert (=> b!816234 (= e!452785 true)))

(declare-datatypes ((tuple2!9498 0))(
  ( (tuple2!9499 (_1!4759 (_ BitVec 64)) (_2!4759 V!24143)) )
))
(declare-datatypes ((List!15367 0))(
  ( (Nil!15364) (Cons!15363 (h!16492 tuple2!9498) (t!21698 List!15367)) )
))
(declare-datatypes ((ListLongMap!8335 0))(
  ( (ListLongMap!8336 (toList!4183 List!15367)) )
))
(declare-fun lt!365590 () ListLongMap!8335)

(declare-fun zeroValueAfter!34 () V!24143)

(declare-fun minValue!754 () V!24143)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2370 (array!44896 array!44898 (_ BitVec 32) (_ BitVec 32) V!24143 V!24143 (_ BitVec 32) Int) ListLongMap!8335)

(assert (=> b!816234 (= lt!365590 (getCurrentListMap!2370 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24143)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!365589 () ListLongMap!8335)

(declare-fun +!1769 (ListLongMap!8335 tuple2!9498) ListLongMap!8335)

(assert (=> b!816234 (= lt!365589 (+!1769 (getCurrentListMap!2370 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9499 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun mapIsEmpty!23125 () Bool)

(declare-fun mapRes!23125 () Bool)

(assert (=> mapIsEmpty!23125 mapRes!23125))

(declare-fun mapNonEmpty!23125 () Bool)

(declare-fun tp!44664 () Bool)

(declare-fun e!452788 () Bool)

(assert (=> mapNonEmpty!23125 (= mapRes!23125 (and tp!44664 e!452788))))

(declare-fun mapValue!23125 () ValueCell!6763)

(declare-fun mapKey!23125 () (_ BitVec 32))

(declare-fun mapRest!23125 () (Array (_ BitVec 32) ValueCell!6763))

(assert (=> mapNonEmpty!23125 (= (arr!21502 _values!788) (store mapRest!23125 mapKey!23125 mapValue!23125))))

(declare-fun b!816235 () Bool)

(assert (=> b!816235 (= e!452787 (and e!452789 mapRes!23125))))

(declare-fun condMapEmpty!23125 () Bool)

(declare-fun mapDefault!23125 () ValueCell!6763)

