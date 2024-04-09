; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105104 () Bool)

(assert start!105104)

(declare-fun b_free!26815 () Bool)

(declare-fun b_next!26815 () Bool)

(assert (=> start!105104 (= b_free!26815 (not b_next!26815))))

(declare-fun tp!93945 () Bool)

(declare-fun b_and!44621 () Bool)

(assert (=> start!105104 (= tp!93945 b_and!44621)))

(declare-fun b!1252081 () Bool)

(declare-fun e!711132 () Bool)

(declare-fun tp_is_empty!31717 () Bool)

(assert (=> b!1252081 (= e!711132 tp_is_empty!31717)))

(declare-fun b!1252082 () Bool)

(declare-fun e!711133 () Bool)

(assert (=> b!1252082 (= e!711133 tp_is_empty!31717)))

(declare-fun res!835122 () Bool)

(declare-fun e!711134 () Bool)

(assert (=> start!105104 (=> (not res!835122) (not e!711134))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105104 (= res!835122 (validMask!0 mask!1466))))

(assert (=> start!105104 e!711134))

(assert (=> start!105104 true))

(assert (=> start!105104 tp!93945))

(assert (=> start!105104 tp_is_empty!31717))

(declare-datatypes ((array!81077 0))(
  ( (array!81078 (arr!39098 (Array (_ BitVec 32) (_ BitVec 64))) (size!39635 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81077)

(declare-fun array_inv!29751 (array!81077) Bool)

(assert (=> start!105104 (array_inv!29751 _keys!1118)))

(declare-datatypes ((V!47655 0))(
  ( (V!47656 (val!15921 Int)) )
))
(declare-datatypes ((ValueCell!15095 0))(
  ( (ValueCellFull!15095 (v!18619 V!47655)) (EmptyCell!15095) )
))
(declare-datatypes ((array!81079 0))(
  ( (array!81080 (arr!39099 (Array (_ BitVec 32) ValueCell!15095)) (size!39636 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81079)

(declare-fun e!711131 () Bool)

(declare-fun array_inv!29752 (array!81079) Bool)

(assert (=> start!105104 (and (array_inv!29752 _values!914) e!711131)))

(declare-fun b!1252083 () Bool)

(declare-fun res!835121 () Bool)

(assert (=> b!1252083 (=> (not res!835121) (not e!711134))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81077 (_ BitVec 32)) Bool)

(assert (=> b!1252083 (= res!835121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252084 () Bool)

(declare-fun mapRes!49345 () Bool)

(assert (=> b!1252084 (= e!711131 (and e!711132 mapRes!49345))))

(declare-fun condMapEmpty!49345 () Bool)

(declare-fun mapDefault!49345 () ValueCell!15095)

