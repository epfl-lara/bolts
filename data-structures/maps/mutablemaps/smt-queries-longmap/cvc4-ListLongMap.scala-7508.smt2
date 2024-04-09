; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95244 () Bool)

(assert start!95244)

(declare-fun b_free!22229 () Bool)

(declare-fun b_next!22229 () Bool)

(assert (=> start!95244 (= b_free!22229 (not b_next!22229))))

(declare-fun tp!78183 () Bool)

(declare-fun b_and!35213 () Bool)

(assert (=> start!95244 (= tp!78183 b_and!35213)))

(declare-fun res!717369 () Bool)

(declare-fun e!615144 () Bool)

(assert (=> start!95244 (=> (not res!717369) (not e!615144))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95244 (= res!717369 (validMask!0 mask!1515))))

(assert (=> start!95244 e!615144))

(assert (=> start!95244 true))

(declare-fun tp_is_empty!26039 () Bool)

(assert (=> start!95244 tp_is_empty!26039))

(declare-datatypes ((V!39853 0))(
  ( (V!39854 (val!13070 Int)) )
))
(declare-datatypes ((ValueCell!12316 0))(
  ( (ValueCellFull!12316 (v!15698 V!39853)) (EmptyCell!12316) )
))
(declare-datatypes ((array!69014 0))(
  ( (array!69015 (arr!33187 (Array (_ BitVec 32) ValueCell!12316)) (size!33724 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!69014)

(declare-fun e!615143 () Bool)

(declare-fun array_inv!25498 (array!69014) Bool)

(assert (=> start!95244 (and (array_inv!25498 _values!955) e!615143)))

(assert (=> start!95244 tp!78183))

(declare-datatypes ((array!69016 0))(
  ( (array!69017 (arr!33188 (Array (_ BitVec 32) (_ BitVec 64))) (size!33725 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!69016)

(declare-fun array_inv!25499 (array!69016) Bool)

(assert (=> start!95244 (array_inv!25499 _keys!1163)))

(declare-fun b!1076123 () Bool)

(declare-fun e!615141 () Bool)

(declare-datatypes ((tuple2!16724 0))(
  ( (tuple2!16725 (_1!8372 (_ BitVec 64)) (_2!8372 V!39853)) )
))
(declare-datatypes ((List!23297 0))(
  ( (Nil!23294) (Cons!23293 (h!24502 tuple2!16724) (t!32661 List!23297)) )
))
(declare-datatypes ((ListLongMap!14705 0))(
  ( (ListLongMap!14706 (toList!7368 List!23297)) )
))
(declare-fun lt!477875 () ListLongMap!14705)

(declare-fun lt!477877 () tuple2!16724)

(declare-fun contains!6372 (ListLongMap!14705 (_ BitVec 64)) Bool)

(declare-fun +!3191 (ListLongMap!14705 tuple2!16724) ListLongMap!14705)

(assert (=> b!1076123 (= e!615141 (not (contains!6372 (+!3191 lt!477875 lt!477877) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!615147 () Bool)

(assert (=> b!1076123 e!615147))

(declare-fun res!717366 () Bool)

(assert (=> b!1076123 (=> (not res!717366) (not e!615147))))

(declare-fun zeroValueBefore!47 () V!39853)

(declare-fun lt!477880 () ListLongMap!14705)

(assert (=> b!1076123 (= res!717366 (= lt!477880 (+!3191 (+!3191 lt!477875 (tuple2!16725 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!477877)))))

(declare-fun minValue!907 () V!39853)

(assert (=> b!1076123 (= lt!477877 (tuple2!16725 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!477876 () ListLongMap!14705)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39853)

(declare-fun getCurrentListMap!4203 (array!69016 array!69014 (_ BitVec 32) (_ BitVec 32) V!39853 V!39853 (_ BitVec 32) Int) ListLongMap!14705)

(assert (=> b!1076123 (= lt!477876 (getCurrentListMap!4203 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1076123 (= lt!477880 (getCurrentListMap!4203 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1076124 () Bool)

(declare-fun lt!477878 () ListLongMap!14705)

(assert (=> b!1076124 (= e!615147 (= lt!477876 (+!3191 lt!477878 lt!477877)))))

(declare-fun b!1076125 () Bool)

(declare-fun res!717365 () Bool)

(assert (=> b!1076125 (=> (not res!717365) (not e!615144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69016 (_ BitVec 32)) Bool)

(assert (=> b!1076125 (= res!717365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1076126 () Bool)

(declare-fun res!717367 () Bool)

(assert (=> b!1076126 (=> (not res!717367) (not e!615144))))

(declare-datatypes ((List!23298 0))(
  ( (Nil!23295) (Cons!23294 (h!24503 (_ BitVec 64)) (t!32662 List!23298)) )
))
(declare-fun arrayNoDuplicates!0 (array!69016 (_ BitVec 32) List!23298) Bool)

(assert (=> b!1076126 (= res!717367 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23295))))

(declare-fun b!1076127 () Bool)

(declare-fun e!615142 () Bool)

(declare-fun mapRes!40801 () Bool)

(assert (=> b!1076127 (= e!615143 (and e!615142 mapRes!40801))))

(declare-fun condMapEmpty!40801 () Bool)

(declare-fun mapDefault!40801 () ValueCell!12316)

