; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42212 () Bool)

(assert start!42212)

(declare-fun b_free!11723 () Bool)

(declare-fun b_next!11723 () Bool)

(assert (=> start!42212 (= b_free!11723 (not b_next!11723))))

(declare-fun tp!41193 () Bool)

(declare-fun b_and!20171 () Bool)

(assert (=> start!42212 (= tp!41193 b_and!20171)))

(declare-fun res!281389 () Bool)

(declare-fun e!275925 () Bool)

(assert (=> start!42212 (=> (not res!281389) (not e!275925))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42212 (= res!281389 (validMask!0 mask!1365))))

(assert (=> start!42212 e!275925))

(declare-fun tp_is_empty!13151 () Bool)

(assert (=> start!42212 tp_is_empty!13151))

(assert (=> start!42212 tp!41193))

(assert (=> start!42212 true))

(declare-datatypes ((array!30031 0))(
  ( (array!30032 (arr!14435 (Array (_ BitVec 32) (_ BitVec 64))) (size!14787 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30031)

(declare-fun array_inv!10416 (array!30031) Bool)

(assert (=> start!42212 (array_inv!10416 _keys!1025)))

(declare-datatypes ((V!18639 0))(
  ( (V!18640 (val!6620 Int)) )
))
(declare-datatypes ((ValueCell!6232 0))(
  ( (ValueCellFull!6232 (v!8907 V!18639)) (EmptyCell!6232) )
))
(declare-datatypes ((array!30033 0))(
  ( (array!30034 (arr!14436 (Array (_ BitVec 32) ValueCell!6232)) (size!14788 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30033)

(declare-fun e!275927 () Bool)

(declare-fun array_inv!10417 (array!30033) Bool)

(assert (=> start!42212 (and (array_inv!10417 _values!833) e!275927)))

(declare-fun mapNonEmpty!21430 () Bool)

(declare-fun mapRes!21430 () Bool)

(declare-fun tp!41194 () Bool)

(declare-fun e!275928 () Bool)

(assert (=> mapNonEmpty!21430 (= mapRes!21430 (and tp!41194 e!275928))))

(declare-fun mapRest!21430 () (Array (_ BitVec 32) ValueCell!6232))

(declare-fun mapValue!21430 () ValueCell!6232)

(declare-fun mapKey!21430 () (_ BitVec 32))

(assert (=> mapNonEmpty!21430 (= (arr!14436 _values!833) (store mapRest!21430 mapKey!21430 mapValue!21430))))

(declare-fun mapIsEmpty!21430 () Bool)

(assert (=> mapIsEmpty!21430 mapRes!21430))

(declare-fun b!470862 () Bool)

(declare-fun res!281391 () Bool)

(assert (=> b!470862 (=> (not res!281391) (not e!275925))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470862 (= res!281391 (and (= (size!14788 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14787 _keys!1025) (size!14788 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470863 () Bool)

(declare-fun res!281392 () Bool)

(assert (=> b!470863 (=> (not res!281392) (not e!275925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30031 (_ BitVec 32)) Bool)

(assert (=> b!470863 (= res!281392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470864 () Bool)

(declare-fun e!275924 () Bool)

(assert (=> b!470864 (= e!275924 tp_is_empty!13151)))

(declare-fun b!470865 () Bool)

(assert (=> b!470865 (= e!275927 (and e!275924 mapRes!21430))))

(declare-fun condMapEmpty!21430 () Bool)

(declare-fun mapDefault!21430 () ValueCell!6232)

