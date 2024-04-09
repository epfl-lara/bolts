; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95680 () Bool)

(assert start!95680)

(declare-fun b_free!22297 () Bool)

(declare-fun b_next!22297 () Bool)

(assert (=> start!95680 (= b_free!22297 (not b_next!22297))))

(declare-fun tp!78741 () Bool)

(declare-fun b_and!35293 () Bool)

(assert (=> start!95680 (= tp!78741 b_and!35293)))

(declare-fun b!1080811 () Bool)

(declare-fun res!720466 () Bool)

(declare-fun e!617865 () Bool)

(assert (=> b!1080811 (=> (not res!720466) (not e!617865))))

(declare-datatypes ((array!69504 0))(
  ( (array!69505 (arr!33422 (Array (_ BitVec 32) (_ BitVec 64))) (size!33959 (_ BitVec 32))) )
))
(declare-fun lt!479102 () array!69504)

(declare-datatypes ((List!23424 0))(
  ( (Nil!23421) (Cons!23420 (h!24629 (_ BitVec 64)) (t!32790 List!23424)) )
))
(declare-fun arrayNoDuplicates!0 (array!69504 (_ BitVec 32) List!23424) Bool)

(assert (=> b!1080811 (= res!720466 (arrayNoDuplicates!0 lt!479102 #b00000000000000000000000000000000 Nil!23421))))

(declare-fun b!1080812 () Bool)

(declare-fun e!617866 () Bool)

(declare-fun tp_is_empty!26299 () Bool)

(assert (=> b!1080812 (= e!617866 tp_is_empty!26299)))

(declare-fun b!1080813 () Bool)

(declare-fun e!617869 () Bool)

(assert (=> b!1080813 (= e!617869 tp_is_empty!26299)))

(declare-fun res!720470 () Bool)

(declare-fun e!617868 () Bool)

(assert (=> start!95680 (=> (not res!720470) (not e!617868))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95680 (= res!720470 (validMask!0 mask!1414))))

(assert (=> start!95680 e!617868))

(assert (=> start!95680 tp!78741))

(assert (=> start!95680 true))

(assert (=> start!95680 tp_is_empty!26299))

(declare-fun _keys!1070 () array!69504)

(declare-fun array_inv!25666 (array!69504) Bool)

(assert (=> start!95680 (array_inv!25666 _keys!1070)))

(declare-datatypes ((V!40193 0))(
  ( (V!40194 (val!13206 Int)) )
))
(declare-datatypes ((ValueCell!12440 0))(
  ( (ValueCellFull!12440 (v!15828 V!40193)) (EmptyCell!12440) )
))
(declare-datatypes ((array!69506 0))(
  ( (array!69507 (arr!33423 (Array (_ BitVec 32) ValueCell!12440)) (size!33960 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69506)

(declare-fun e!617864 () Bool)

(declare-fun array_inv!25667 (array!69506) Bool)

(assert (=> start!95680 (and (array_inv!25667 _values!874) e!617864)))

(declare-fun mapIsEmpty!41203 () Bool)

(declare-fun mapRes!41203 () Bool)

(assert (=> mapIsEmpty!41203 mapRes!41203))

(declare-fun b!1080814 () Bool)

(declare-fun res!720473 () Bool)

(assert (=> b!1080814 (=> (not res!720473) (not e!617868))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080814 (= res!720473 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33959 _keys!1070))))))

(declare-fun b!1080815 () Bool)

(declare-fun res!720467 () Bool)

(assert (=> b!1080815 (=> (not res!720467) (not e!617868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69504 (_ BitVec 32)) Bool)

(assert (=> b!1080815 (= res!720467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080816 () Bool)

(assert (=> b!1080816 (= e!617868 e!617865)))

(declare-fun res!720471 () Bool)

(assert (=> b!1080816 (=> (not res!720471) (not e!617865))))

(assert (=> b!1080816 (= res!720471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479102 mask!1414))))

(assert (=> b!1080816 (= lt!479102 (array!69505 (store (arr!33422 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33959 _keys!1070)))))

(declare-fun b!1080817 () Bool)

(declare-fun res!720472 () Bool)

(assert (=> b!1080817 (=> (not res!720472) (not e!617868))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1080817 (= res!720472 (and (= (size!33960 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33959 _keys!1070) (size!33960 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080818 () Bool)

(declare-fun res!720468 () Bool)

(assert (=> b!1080818 (=> (not res!720468) (not e!617868))))

(assert (=> b!1080818 (= res!720468 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23421))))

(declare-fun b!1080819 () Bool)

(declare-fun res!720465 () Bool)

(assert (=> b!1080819 (=> (not res!720465) (not e!617868))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080819 (= res!720465 (validKeyInArray!0 k!904))))

(declare-fun b!1080820 () Bool)

(declare-fun res!720469 () Bool)

(assert (=> b!1080820 (=> (not res!720469) (not e!617868))))

(assert (=> b!1080820 (= res!720469 (= (select (arr!33422 _keys!1070) i!650) k!904))))

(declare-fun b!1080821 () Bool)

(assert (=> b!1080821 (= e!617864 (and e!617866 mapRes!41203))))

(declare-fun condMapEmpty!41203 () Bool)

(declare-fun mapDefault!41203 () ValueCell!12440)

