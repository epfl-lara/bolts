; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96016 () Bool)

(assert start!96016)

(declare-fun b_free!22633 () Bool)

(declare-fun b_next!22633 () Bool)

(assert (=> start!96016 (= b_free!22633 (not b_next!22633))))

(declare-fun tp!79749 () Bool)

(declare-fun b_and!35959 () Bool)

(assert (=> start!96016 (= tp!79749 b_and!35959)))

(declare-fun b!1087616 () Bool)

(declare-fun e!621304 () Bool)

(declare-fun e!621301 () Bool)

(assert (=> b!1087616 (= e!621304 e!621301)))

(declare-fun res!725434 () Bool)

(assert (=> b!1087616 (=> (not res!725434) (not e!621301))))

(declare-datatypes ((array!70162 0))(
  ( (array!70163 (arr!33751 (Array (_ BitVec 32) (_ BitVec 64))) (size!34288 (_ BitVec 32))) )
))
(declare-fun lt!484089 () array!70162)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70162 (_ BitVec 32)) Bool)

(assert (=> b!1087616 (= res!725434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484089 mask!1414))))

(declare-fun _keys!1070 () array!70162)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1087616 (= lt!484089 (array!70163 (store (arr!33751 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34288 _keys!1070)))))

(declare-fun b!1087617 () Bool)

(declare-fun res!725430 () Bool)

(assert (=> b!1087617 (=> (not res!725430) (not e!621304))))

(assert (=> b!1087617 (= res!725430 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34288 _keys!1070))))))

(declare-fun b!1087618 () Bool)

(declare-fun e!621303 () Bool)

(assert (=> b!1087618 (= e!621303 true)))

(declare-datatypes ((V!40641 0))(
  ( (V!40642 (val!13374 Int)) )
))
(declare-datatypes ((tuple2!17040 0))(
  ( (tuple2!17041 (_1!8530 (_ BitVec 64)) (_2!8530 V!40641)) )
))
(declare-datatypes ((List!23681 0))(
  ( (Nil!23678) (Cons!23677 (h!24886 tuple2!17040) (t!33379 List!23681)) )
))
(declare-datatypes ((ListLongMap!15021 0))(
  ( (ListLongMap!15022 (toList!7526 List!23681)) )
))
(declare-fun lt!484100 () ListLongMap!15021)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!484088 () ListLongMap!15021)

(declare-fun -!806 (ListLongMap!15021 (_ BitVec 64)) ListLongMap!15021)

(assert (=> b!1087618 (= (-!806 lt!484100 k!904) lt!484088)))

(declare-datatypes ((Unit!35727 0))(
  ( (Unit!35728) )
))
(declare-fun lt!484097 () Unit!35727)

(declare-fun lt!484090 () ListLongMap!15021)

(declare-fun zeroValue!831 () V!40641)

(declare-fun addRemoveCommutativeForDiffKeys!45 (ListLongMap!15021 (_ BitVec 64) V!40641 (_ BitVec 64)) Unit!35727)

(assert (=> b!1087618 (= lt!484097 (addRemoveCommutativeForDiffKeys!45 lt!484090 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1087619 () Bool)

(declare-fun res!725428 () Bool)

(assert (=> b!1087619 (=> (not res!725428) (not e!621304))))

(assert (=> b!1087619 (= res!725428 (= (select (arr!33751 _keys!1070) i!650) k!904))))

(declare-fun b!1087620 () Bool)

(declare-fun res!725435 () Bool)

(assert (=> b!1087620 (=> (not res!725435) (not e!621304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087620 (= res!725435 (validKeyInArray!0 k!904))))

(declare-fun b!1087621 () Bool)

(declare-fun res!725437 () Bool)

(assert (=> b!1087621 (=> (not res!725437) (not e!621304))))

(declare-datatypes ((List!23682 0))(
  ( (Nil!23679) (Cons!23678 (h!24887 (_ BitVec 64)) (t!33380 List!23682)) )
))
(declare-fun arrayNoDuplicates!0 (array!70162 (_ BitVec 32) List!23682) Bool)

(assert (=> b!1087621 (= res!725437 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23679))))

(declare-fun mapNonEmpty!41707 () Bool)

(declare-fun mapRes!41707 () Bool)

(declare-fun tp!79748 () Bool)

(declare-fun e!621298 () Bool)

(assert (=> mapNonEmpty!41707 (= mapRes!41707 (and tp!79748 e!621298))))

(declare-datatypes ((ValueCell!12608 0))(
  ( (ValueCellFull!12608 (v!15996 V!40641)) (EmptyCell!12608) )
))
(declare-datatypes ((array!70164 0))(
  ( (array!70165 (arr!33752 (Array (_ BitVec 32) ValueCell!12608)) (size!34289 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70164)

(declare-fun mapRest!41707 () (Array (_ BitVec 32) ValueCell!12608))

(declare-fun mapKey!41707 () (_ BitVec 32))

(declare-fun mapValue!41707 () ValueCell!12608)

(assert (=> mapNonEmpty!41707 (= (arr!33752 _values!874) (store mapRest!41707 mapKey!41707 mapValue!41707))))

(declare-fun b!1087622 () Bool)

(declare-fun res!725431 () Bool)

(assert (=> b!1087622 (=> (not res!725431) (not e!621301))))

(assert (=> b!1087622 (= res!725431 (arrayNoDuplicates!0 lt!484089 #b00000000000000000000000000000000 Nil!23679))))

(declare-fun b!1087623 () Bool)

(declare-fun res!725429 () Bool)

(assert (=> b!1087623 (=> (not res!725429) (not e!621304))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087623 (= res!725429 (and (= (size!34289 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34288 _keys!1070) (size!34289 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41707 () Bool)

(assert (=> mapIsEmpty!41707 mapRes!41707))

(declare-fun b!1087624 () Bool)

(declare-fun tp_is_empty!26635 () Bool)

(assert (=> b!1087624 (= e!621298 tp_is_empty!26635)))

(declare-fun res!725432 () Bool)

(assert (=> start!96016 (=> (not res!725432) (not e!621304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96016 (= res!725432 (validMask!0 mask!1414))))

(assert (=> start!96016 e!621304))

(assert (=> start!96016 tp!79749))

(assert (=> start!96016 true))

(assert (=> start!96016 tp_is_empty!26635))

(declare-fun array_inv!25894 (array!70162) Bool)

(assert (=> start!96016 (array_inv!25894 _keys!1070)))

(declare-fun e!621299 () Bool)

(declare-fun array_inv!25895 (array!70164) Bool)

(assert (=> start!96016 (and (array_inv!25895 _values!874) e!621299)))

(declare-fun b!1087625 () Bool)

(declare-fun e!621300 () Bool)

(assert (=> b!1087625 (= e!621299 (and e!621300 mapRes!41707))))

(declare-fun condMapEmpty!41707 () Bool)

(declare-fun mapDefault!41707 () ValueCell!12608)

