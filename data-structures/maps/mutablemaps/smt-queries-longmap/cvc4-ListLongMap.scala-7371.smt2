; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93984 () Bool)

(assert start!93984)

(declare-fun b_free!21407 () Bool)

(declare-fun b_next!21407 () Bool)

(assert (=> start!93984 (= b_free!21407 (not b_next!21407))))

(declare-fun tp!75647 () Bool)

(declare-fun b_and!34147 () Bool)

(assert (=> start!93984 (= tp!75647 b_and!34147)))

(declare-fun b!1062521 () Bool)

(declare-fun res!709578 () Bool)

(declare-fun e!605308 () Bool)

(assert (=> b!1062521 (=> (not res!709578) (not e!605308))))

(declare-datatypes ((array!67408 0))(
  ( (array!67409 (arr!32407 (Array (_ BitVec 32) (_ BitVec 64))) (size!32944 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67408)

(declare-datatypes ((List!22715 0))(
  ( (Nil!22712) (Cons!22711 (h!23920 (_ BitVec 64)) (t!32033 List!22715)) )
))
(declare-fun arrayNoDuplicates!0 (array!67408 (_ BitVec 32) List!22715) Bool)

(assert (=> b!1062521 (= res!709578 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22712))))

(declare-fun res!709579 () Bool)

(assert (=> start!93984 (=> (not res!709579) (not e!605308))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93984 (= res!709579 (validMask!0 mask!1515))))

(assert (=> start!93984 e!605308))

(assert (=> start!93984 true))

(declare-fun tp_is_empty!25217 () Bool)

(assert (=> start!93984 tp_is_empty!25217))

(declare-datatypes ((V!38757 0))(
  ( (V!38758 (val!12659 Int)) )
))
(declare-datatypes ((ValueCell!11905 0))(
  ( (ValueCellFull!11905 (v!15270 V!38757)) (EmptyCell!11905) )
))
(declare-datatypes ((array!67410 0))(
  ( (array!67411 (arr!32408 (Array (_ BitVec 32) ValueCell!11905)) (size!32945 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67410)

(declare-fun e!605309 () Bool)

(declare-fun array_inv!24942 (array!67410) Bool)

(assert (=> start!93984 (and (array_inv!24942 _values!955) e!605309)))

(assert (=> start!93984 tp!75647))

(declare-fun array_inv!24943 (array!67408) Bool)

(assert (=> start!93984 (array_inv!24943 _keys!1163)))

(declare-fun b!1062522 () Bool)

(declare-fun res!709574 () Bool)

(assert (=> b!1062522 (=> (not res!709574) (not e!605308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67408 (_ BitVec 32)) Bool)

(assert (=> b!1062522 (= res!709574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1062523 () Bool)

(declare-fun res!709576 () Bool)

(assert (=> b!1062523 (=> (not res!709576) (not e!605308))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062523 (= res!709576 (and (= (size!32945 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32944 _keys!1163) (size!32945 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39499 () Bool)

(declare-fun mapRes!39499 () Bool)

(assert (=> mapIsEmpty!39499 mapRes!39499))

(declare-fun b!1062524 () Bool)

(declare-fun e!605306 () Bool)

(declare-fun e!605305 () Bool)

(assert (=> b!1062524 (= e!605306 e!605305)))

(declare-fun res!709575 () Bool)

(assert (=> b!1062524 (=> res!709575 e!605305)))

(declare-datatypes ((tuple2!16104 0))(
  ( (tuple2!16105 (_1!8062 (_ BitVec 64)) (_2!8062 V!38757)) )
))
(declare-datatypes ((List!22716 0))(
  ( (Nil!22713) (Cons!22712 (h!23921 tuple2!16104) (t!32034 List!22716)) )
))
(declare-datatypes ((ListLongMap!14085 0))(
  ( (ListLongMap!14086 (toList!7058 List!22716)) )
))
(declare-fun lt!468152 () ListLongMap!14085)

(declare-fun contains!6253 (ListLongMap!14085 (_ BitVec 64)) Bool)

(assert (=> b!1062524 (= res!709575 (contains!6253 lt!468152 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38757)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38757)

(declare-fun getCurrentListMap!4003 (array!67408 array!67410 (_ BitVec 32) (_ BitVec 32) V!38757 V!38757 (_ BitVec 32) Int) ListLongMap!14085)

(assert (=> b!1062524 (= lt!468152 (getCurrentListMap!4003 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062525 () Bool)

(declare-fun e!605310 () Bool)

(assert (=> b!1062525 (= e!605309 (and e!605310 mapRes!39499))))

(declare-fun condMapEmpty!39499 () Bool)

(declare-fun mapDefault!39499 () ValueCell!11905)

