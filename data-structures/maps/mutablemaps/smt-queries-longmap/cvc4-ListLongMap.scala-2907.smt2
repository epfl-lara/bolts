; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41596 () Bool)

(assert start!41596)

(declare-fun b_free!11255 () Bool)

(declare-fun b_next!11255 () Bool)

(assert (=> start!41596 (= b_free!11255 (not b_next!11255))))

(declare-fun tp!39763 () Bool)

(declare-fun b_and!19613 () Bool)

(assert (=> start!41596 (= tp!39763 b_and!19613)))

(declare-fun res!277677 () Bool)

(declare-fun e!271253 () Bool)

(assert (=> start!41596 (=> (not res!277677) (not e!271253))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41596 (= res!277677 (validMask!0 mask!1365))))

(assert (=> start!41596 e!271253))

(declare-fun tp_is_empty!12683 () Bool)

(assert (=> start!41596 tp_is_empty!12683))

(assert (=> start!41596 tp!39763))

(assert (=> start!41596 true))

(declare-datatypes ((array!29113 0))(
  ( (array!29114 (arr!13985 (Array (_ BitVec 32) (_ BitVec 64))) (size!14337 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29113)

(declare-fun array_inv!10082 (array!29113) Bool)

(assert (=> start!41596 (array_inv!10082 _keys!1025)))

(declare-datatypes ((V!18015 0))(
  ( (V!18016 (val!6386 Int)) )
))
(declare-datatypes ((ValueCell!5998 0))(
  ( (ValueCellFull!5998 (v!8669 V!18015)) (EmptyCell!5998) )
))
(declare-datatypes ((array!29115 0))(
  ( (array!29116 (arr!13986 (Array (_ BitVec 32) ValueCell!5998)) (size!14338 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29115)

(declare-fun e!271251 () Bool)

(declare-fun array_inv!10083 (array!29115) Bool)

(assert (=> start!41596 (and (array_inv!10083 _values!833) e!271251)))

(declare-fun b!464329 () Bool)

(declare-fun e!271254 () Bool)

(assert (=> b!464329 (= e!271254 tp_is_empty!12683)))

(declare-fun b!464330 () Bool)

(declare-fun e!271255 () Bool)

(assert (=> b!464330 (= e!271255 tp_is_empty!12683)))

(declare-fun b!464331 () Bool)

(declare-fun res!277676 () Bool)

(assert (=> b!464331 (=> (not res!277676) (not e!271253))))

(declare-datatypes ((List!8472 0))(
  ( (Nil!8469) (Cons!8468 (h!9324 (_ BitVec 64)) (t!14426 List!8472)) )
))
(declare-fun arrayNoDuplicates!0 (array!29113 (_ BitVec 32) List!8472) Bool)

(assert (=> b!464331 (= res!277676 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8469))))

(declare-fun b!464332 () Bool)

(declare-fun res!277678 () Bool)

(assert (=> b!464332 (=> (not res!277678) (not e!271253))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!464332 (= res!277678 (and (= (size!14338 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14337 _keys!1025) (size!14338 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20701 () Bool)

(declare-fun mapRes!20701 () Bool)

(declare-fun tp!39762 () Bool)

(assert (=> mapNonEmpty!20701 (= mapRes!20701 (and tp!39762 e!271254))))

(declare-fun mapRest!20701 () (Array (_ BitVec 32) ValueCell!5998))

(declare-fun mapKey!20701 () (_ BitVec 32))

(declare-fun mapValue!20701 () ValueCell!5998)

(assert (=> mapNonEmpty!20701 (= (arr!13986 _values!833) (store mapRest!20701 mapKey!20701 mapValue!20701))))

(declare-fun b!464333 () Bool)

(assert (=> b!464333 (= e!271251 (and e!271255 mapRes!20701))))

(declare-fun condMapEmpty!20701 () Bool)

(declare-fun mapDefault!20701 () ValueCell!5998)

