; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71250 () Bool)

(assert start!71250)

(declare-fun b_free!13373 () Bool)

(declare-fun b_next!13373 () Bool)

(assert (=> start!71250 (= b_free!13373 (not b_next!13373))))

(declare-fun tp!46882 () Bool)

(declare-fun b_and!22329 () Bool)

(assert (=> start!71250 (= tp!46882 b_and!22329)))

(declare-fun b!827206 () Bool)

(declare-fun res!563946 () Bool)

(declare-fun e!460830 () Bool)

(assert (=> b!827206 (=> (not res!563946) (not e!460830))))

(declare-datatypes ((array!46300 0))(
  ( (array!46301 (arr!22190 (Array (_ BitVec 32) (_ BitVec 64))) (size!22611 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46300)

(declare-datatypes ((List!15904 0))(
  ( (Nil!15901) (Cons!15900 (h!17029 (_ BitVec 64)) (t!22261 List!15904)) )
))
(declare-fun arrayNoDuplicates!0 (array!46300 (_ BitVec 32) List!15904) Bool)

(assert (=> b!827206 (= res!563946 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15901))))

(declare-fun b!827207 () Bool)

(declare-fun e!460827 () Bool)

(declare-fun e!460828 () Bool)

(declare-fun mapRes!24253 () Bool)

(assert (=> b!827207 (= e!460827 (and e!460828 mapRes!24253))))

(declare-fun condMapEmpty!24253 () Bool)

(declare-datatypes ((V!25111 0))(
  ( (V!25112 (val!7589 Int)) )
))
(declare-datatypes ((ValueCell!7126 0))(
  ( (ValueCellFull!7126 (v!10020 V!25111)) (EmptyCell!7126) )
))
(declare-datatypes ((array!46302 0))(
  ( (array!46303 (arr!22191 (Array (_ BitVec 32) ValueCell!7126)) (size!22612 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46302)

(declare-fun mapDefault!24253 () ValueCell!7126)

