; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77570 () Bool)

(assert start!77570)

(declare-fun b_free!16127 () Bool)

(declare-fun b_next!16127 () Bool)

(assert (=> start!77570 (= b_free!16127 (not b_next!16127))))

(declare-fun tp!56643 () Bool)

(declare-fun b_and!26511 () Bool)

(assert (=> start!77570 (= tp!56643 b_and!26511)))

(declare-fun b!903317 () Bool)

(declare-fun e!506153 () Bool)

(declare-fun e!506151 () Bool)

(declare-fun mapRes!29530 () Bool)

(assert (=> b!903317 (= e!506153 (and e!506151 mapRes!29530))))

(declare-fun condMapEmpty!29530 () Bool)

(declare-datatypes ((V!29691 0))(
  ( (V!29692 (val!9323 Int)) )
))
(declare-datatypes ((ValueCell!8791 0))(
  ( (ValueCellFull!8791 (v!11828 V!29691)) (EmptyCell!8791) )
))
(declare-datatypes ((array!53132 0))(
  ( (array!53133 (arr!25521 (Array (_ BitVec 32) ValueCell!8791)) (size!25981 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53132)

(declare-fun mapDefault!29530 () ValueCell!8791)

