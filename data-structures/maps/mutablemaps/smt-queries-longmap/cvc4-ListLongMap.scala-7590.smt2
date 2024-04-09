; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95900 () Bool)

(assert start!95900)

(declare-fun b_free!22517 () Bool)

(declare-fun b_next!22517 () Bool)

(assert (=> start!95900 (= b_free!22517 (not b_next!22517))))

(declare-fun tp!79400 () Bool)

(declare-fun b_and!35727 () Bool)

(assert (=> start!95900 (= tp!79400 b_and!35727)))

(declare-fun b!1085055 () Bool)

(declare-fun res!723508 () Bool)

(declare-fun e!619906 () Bool)

(assert (=> b!1085055 (=> (not res!723508) (not e!619906))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69940 0))(
  ( (array!69941 (arr!33640 (Array (_ BitVec 32) (_ BitVec 64))) (size!34177 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69940)

(declare-datatypes ((V!40485 0))(
  ( (V!40486 (val!13316 Int)) )
))
(declare-datatypes ((ValueCell!12550 0))(
  ( (ValueCellFull!12550 (v!15938 V!40485)) (EmptyCell!12550) )
))
(declare-datatypes ((array!69942 0))(
  ( (array!69943 (arr!33641 (Array (_ BitVec 32) ValueCell!12550)) (size!34178 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69942)

(assert (=> b!1085055 (= res!723508 (and (= (size!34178 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34177 _keys!1070) (size!34178 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085056 () Bool)

(declare-fun e!619911 () Bool)

(declare-fun tp_is_empty!26519 () Bool)

(assert (=> b!1085056 (= e!619911 tp_is_empty!26519)))

(declare-fun b!1085057 () Bool)

(declare-fun res!723507 () Bool)

(assert (=> b!1085057 (=> (not res!723507) (not e!619906))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085057 (= res!723507 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34177 _keys!1070))))))

(declare-fun res!723514 () Bool)

(assert (=> start!95900 (=> (not res!723514) (not e!619906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95900 (= res!723514 (validMask!0 mask!1414))))

(assert (=> start!95900 e!619906))

(assert (=> start!95900 tp!79400))

(assert (=> start!95900 true))

(assert (=> start!95900 tp_is_empty!26519))

(declare-fun array_inv!25814 (array!69940) Bool)

(assert (=> start!95900 (array_inv!25814 _keys!1070)))

(declare-fun e!619907 () Bool)

(declare-fun array_inv!25815 (array!69942) Bool)

(assert (=> start!95900 (and (array_inv!25815 _values!874) e!619907)))

(declare-fun b!1085058 () Bool)

(declare-fun e!619912 () Bool)

(declare-fun e!619909 () Bool)

(assert (=> b!1085058 (= e!619912 e!619909)))

(declare-fun res!723506 () Bool)

(assert (=> b!1085058 (=> res!723506 e!619909)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1085058 (= res!723506 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!16948 0))(
  ( (tuple2!16949 (_1!8484 (_ BitVec 64)) (_2!8484 V!40485)) )
))
(declare-datatypes ((List!23590 0))(
  ( (Nil!23587) (Cons!23586 (h!24795 tuple2!16948) (t!33172 List!23590)) )
))
(declare-datatypes ((ListLongMap!14929 0))(
  ( (ListLongMap!14930 (toList!7480 List!23590)) )
))
(declare-fun lt!481286 () ListLongMap!14929)

(declare-fun lt!481279 () ListLongMap!14929)

(assert (=> b!1085058 (= lt!481286 lt!481279)))

(declare-fun lt!481273 () ListLongMap!14929)

(declare-fun -!761 (ListLongMap!14929 (_ BitVec 64)) ListLongMap!14929)

(assert (=> b!1085058 (= lt!481286 (-!761 lt!481273 k!904))))

(declare-fun lt!481287 () ListLongMap!14929)

(declare-datatypes ((Unit!35637 0))(
  ( (Unit!35638) )
))
(declare-fun lt!481288 () Unit!35637)

(declare-fun zeroValue!831 () V!40485)

(declare-fun addRemoveCommutativeForDiffKeys!8 (ListLongMap!14929 (_ BitVec 64) V!40485 (_ BitVec 64)) Unit!35637)

(assert (=> b!1085058 (= lt!481288 (addRemoveCommutativeForDiffKeys!8 lt!481287 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!481285 () ListLongMap!14929)

(declare-fun lt!481281 () tuple2!16948)

(declare-fun +!3212 (ListLongMap!14929 tuple2!16948) ListLongMap!14929)

(assert (=> b!1085058 (= lt!481285 (+!3212 lt!481279 lt!481281))))

(declare-fun lt!481284 () ListLongMap!14929)

(declare-fun lt!481274 () tuple2!16948)

(assert (=> b!1085058 (= lt!481279 (+!3212 lt!481284 lt!481274))))

(declare-fun lt!481278 () ListLongMap!14929)

(declare-fun lt!481282 () ListLongMap!14929)

(assert (=> b!1085058 (= lt!481278 lt!481282)))

(assert (=> b!1085058 (= lt!481282 (+!3212 lt!481273 lt!481281))))

(assert (=> b!1085058 (= lt!481273 (+!3212 lt!481287 lt!481274))))

(declare-fun lt!481275 () ListLongMap!14929)

(assert (=> b!1085058 (= lt!481285 (+!3212 (+!3212 lt!481275 lt!481274) lt!481281))))

(declare-fun minValue!831 () V!40485)

(assert (=> b!1085058 (= lt!481281 (tuple2!16949 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085058 (= lt!481274 (tuple2!16949 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun mapIsEmpty!41533 () Bool)

(declare-fun mapRes!41533 () Bool)

(assert (=> mapIsEmpty!41533 mapRes!41533))

(declare-fun b!1085059 () Bool)

(declare-fun e!619908 () Bool)

(assert (=> b!1085059 (= e!619906 e!619908)))

(declare-fun res!723509 () Bool)

(assert (=> b!1085059 (=> (not res!723509) (not e!619908))))

(declare-fun lt!481283 () array!69940)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69940 (_ BitVec 32)) Bool)

(assert (=> b!1085059 (= res!723509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481283 mask!1414))))

(assert (=> b!1085059 (= lt!481283 (array!69941 (store (arr!33640 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34177 _keys!1070)))))

(declare-fun b!1085060 () Bool)

(declare-fun res!723515 () Bool)

(assert (=> b!1085060 (=> (not res!723515) (not e!619906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085060 (= res!723515 (validKeyInArray!0 k!904))))

(declare-fun b!1085061 () Bool)

(declare-fun res!723512 () Bool)

(assert (=> b!1085061 (=> (not res!723512) (not e!619906))))

(declare-datatypes ((List!23591 0))(
  ( (Nil!23588) (Cons!23587 (h!24796 (_ BitVec 64)) (t!33173 List!23591)) )
))
(declare-fun arrayNoDuplicates!0 (array!69940 (_ BitVec 32) List!23591) Bool)

(assert (=> b!1085061 (= res!723512 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23588))))

(declare-fun b!1085062 () Bool)

(assert (=> b!1085062 (= e!619909 true)))

(assert (=> b!1085062 (= (-!761 lt!481282 k!904) (+!3212 lt!481286 lt!481281))))

(declare-fun lt!481277 () Unit!35637)

(assert (=> b!1085062 (= lt!481277 (addRemoveCommutativeForDiffKeys!8 lt!481273 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1085063 () Bool)

(declare-fun res!723511 () Bool)

(assert (=> b!1085063 (=> (not res!723511) (not e!619906))))

(assert (=> b!1085063 (= res!723511 (= (select (arr!33640 _keys!1070) i!650) k!904))))

(declare-fun b!1085064 () Bool)

(declare-fun e!619910 () Bool)

(assert (=> b!1085064 (= e!619910 tp_is_empty!26519)))

(declare-fun b!1085065 () Bool)

(declare-fun res!723510 () Bool)

(assert (=> b!1085065 (=> (not res!723510) (not e!619908))))

(assert (=> b!1085065 (= res!723510 (arrayNoDuplicates!0 lt!481283 #b00000000000000000000000000000000 Nil!23588))))

(declare-fun b!1085066 () Bool)

(assert (=> b!1085066 (= e!619907 (and e!619911 mapRes!41533))))

(declare-fun condMapEmpty!41533 () Bool)

(declare-fun mapDefault!41533 () ValueCell!12550)

