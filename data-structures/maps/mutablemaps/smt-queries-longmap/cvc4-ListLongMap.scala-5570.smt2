; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73236 () Bool)

(assert start!73236)

(declare-fun b_free!14123 () Bool)

(declare-fun b_next!14123 () Bool)

(assert (=> start!73236 (= b_free!14123 (not b_next!14123))))

(declare-fun tp!49873 () Bool)

(declare-fun b_and!23423 () Bool)

(assert (=> start!73236 (= tp!49873 b_and!23423)))

(declare-fun b!852895 () Bool)

(declare-fun res!579388 () Bool)

(declare-fun e!475686 () Bool)

(assert (=> b!852895 (=> (not res!579388) (not e!475686))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48702 0))(
  ( (array!48703 (arr!23378 (Array (_ BitVec 32) (_ BitVec 64))) (size!23819 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48702)

(declare-datatypes ((V!26725 0))(
  ( (V!26726 (val!8177 Int)) )
))
(declare-datatypes ((ValueCell!7690 0))(
  ( (ValueCellFull!7690 (v!10598 V!26725)) (EmptyCell!7690) )
))
(declare-datatypes ((array!48704 0))(
  ( (array!48705 (arr!23379 (Array (_ BitVec 32) ValueCell!7690)) (size!23820 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48704)

(assert (=> b!852895 (= res!579388 (and (= (size!23820 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23819 _keys!868) (size!23820 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852896 () Bool)

(declare-fun res!579387 () Bool)

(assert (=> b!852896 (=> (not res!579387) (not e!475686))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852896 (= res!579387 (validKeyInArray!0 k!854))))

(declare-fun b!852897 () Bool)

(declare-fun res!579384 () Bool)

(assert (=> b!852897 (=> (not res!579384) (not e!475686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48702 (_ BitVec 32)) Bool)

(assert (=> b!852897 (= res!579384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!852898 () Bool)

(declare-fun e!475687 () Bool)

(declare-fun e!475685 () Bool)

(declare-fun mapRes!25988 () Bool)

(assert (=> b!852898 (= e!475687 (and e!475685 mapRes!25988))))

(declare-fun condMapEmpty!25988 () Bool)

(declare-fun mapDefault!25988 () ValueCell!7690)

