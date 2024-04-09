; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70030 () Bool)

(assert start!70030)

(declare-fun b_free!12427 () Bool)

(declare-fun b_next!12427 () Bool)

(assert (=> start!70030 (= b_free!12427 (not b_next!12427))))

(declare-fun tp!43995 () Bool)

(declare-fun b_and!21217 () Bool)

(assert (=> start!70030 (= tp!43995 b_and!21217)))

(declare-fun res!555830 () Bool)

(declare-fun e!450828 () Bool)

(assert (=> start!70030 (=> (not res!555830) (not e!450828))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70030 (= res!555830 (validMask!0 mask!1312))))

(assert (=> start!70030 e!450828))

(declare-fun tp_is_empty!14137 () Bool)

(assert (=> start!70030 tp_is_empty!14137))

(declare-datatypes ((array!44464 0))(
  ( (array!44465 (arr!21288 (Array (_ BitVec 32) (_ BitVec 64))) (size!21709 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44464)

(declare-fun array_inv!17029 (array!44464) Bool)

(assert (=> start!70030 (array_inv!17029 _keys!976)))

(assert (=> start!70030 true))

(declare-datatypes ((V!23851 0))(
  ( (V!23852 (val!7116 Int)) )
))
(declare-datatypes ((ValueCell!6653 0))(
  ( (ValueCellFull!6653 (v!9539 V!23851)) (EmptyCell!6653) )
))
(declare-datatypes ((array!44466 0))(
  ( (array!44467 (arr!21289 (Array (_ BitVec 32) ValueCell!6653)) (size!21710 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44466)

(declare-fun e!450826 () Bool)

(declare-fun array_inv!17030 (array!44466) Bool)

(assert (=> start!70030 (and (array_inv!17030 _values!788) e!450826)))

(assert (=> start!70030 tp!43995))

(declare-fun b!813479 () Bool)

(declare-fun e!450830 () Bool)

(assert (=> b!813479 (= e!450830 tp_is_empty!14137)))

(declare-fun b!813480 () Bool)

(assert (=> b!813480 (= e!450828 false)))

(declare-fun zeroValueAfter!34 () V!23851)

(declare-fun minValue!754 () V!23851)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9324 0))(
  ( (tuple2!9325 (_1!4672 (_ BitVec 64)) (_2!4672 V!23851)) )
))
(declare-datatypes ((List!15199 0))(
  ( (Nil!15196) (Cons!15195 (h!16324 tuple2!9324) (t!21524 List!15199)) )
))
(declare-datatypes ((ListLongMap!8161 0))(
  ( (ListLongMap!8162 (toList!4096 List!15199)) )
))
(declare-fun lt!364297 () ListLongMap!8161)

(declare-fun getCurrentListMapNoExtraKeys!2145 (array!44464 array!44466 (_ BitVec 32) (_ BitVec 32) V!23851 V!23851 (_ BitVec 32) Int) ListLongMap!8161)

(assert (=> b!813480 (= lt!364297 (getCurrentListMapNoExtraKeys!2145 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23851)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364298 () ListLongMap!8161)

(assert (=> b!813480 (= lt!364298 (getCurrentListMapNoExtraKeys!2145 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813481 () Bool)

(declare-fun res!555831 () Bool)

(assert (=> b!813481 (=> (not res!555831) (not e!450828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44464 (_ BitVec 32)) Bool)

(assert (=> b!813481 (= res!555831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813482 () Bool)

(declare-fun res!555832 () Bool)

(assert (=> b!813482 (=> (not res!555832) (not e!450828))))

(assert (=> b!813482 (= res!555832 (and (= (size!21710 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21709 _keys!976) (size!21710 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813483 () Bool)

(declare-fun res!555833 () Bool)

(assert (=> b!813483 (=> (not res!555833) (not e!450828))))

(declare-datatypes ((List!15200 0))(
  ( (Nil!15197) (Cons!15196 (h!16325 (_ BitVec 64)) (t!21525 List!15200)) )
))
(declare-fun arrayNoDuplicates!0 (array!44464 (_ BitVec 32) List!15200) Bool)

(assert (=> b!813483 (= res!555833 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15197))))

(declare-fun b!813484 () Bool)

(declare-fun e!450827 () Bool)

(assert (=> b!813484 (= e!450827 tp_is_empty!14137)))

(declare-fun b!813485 () Bool)

(declare-fun mapRes!22786 () Bool)

(assert (=> b!813485 (= e!450826 (and e!450830 mapRes!22786))))

(declare-fun condMapEmpty!22786 () Bool)

(declare-fun mapDefault!22786 () ValueCell!6653)

