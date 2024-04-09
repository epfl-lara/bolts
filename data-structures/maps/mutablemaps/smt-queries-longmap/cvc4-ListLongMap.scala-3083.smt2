; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43402 () Bool)

(assert start!43402)

(declare-fun b_free!12221 () Bool)

(declare-fun b_next!12221 () Bool)

(assert (=> start!43402 (= b_free!12221 (not b_next!12221))))

(declare-fun tp!42939 () Bool)

(declare-fun b_and!20995 () Bool)

(assert (=> start!43402 (= tp!42939 b_and!20995)))

(declare-fun b!480663 () Bool)

(declare-fun res!286704 () Bool)

(declare-fun e!282818 () Bool)

(assert (=> b!480663 (=> (not res!286704) (not e!282818))))

(declare-datatypes ((array!31101 0))(
  ( (array!31102 (arr!14952 (Array (_ BitVec 32) (_ BitVec 64))) (size!15310 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31101)

(declare-datatypes ((List!9186 0))(
  ( (Nil!9183) (Cons!9182 (h!10038 (_ BitVec 64)) (t!15404 List!9186)) )
))
(declare-fun arrayNoDuplicates!0 (array!31101 (_ BitVec 32) List!9186) Bool)

(assert (=> b!480663 (= res!286704 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9183))))

(declare-fun b!480664 () Bool)

(declare-fun e!282816 () Bool)

(declare-fun e!282819 () Bool)

(declare-fun mapRes!22303 () Bool)

(assert (=> b!480664 (= e!282816 (and e!282819 mapRes!22303))))

(declare-fun condMapEmpty!22303 () Bool)

(declare-datatypes ((V!19381 0))(
  ( (V!19382 (val!6914 Int)) )
))
(declare-datatypes ((ValueCell!6505 0))(
  ( (ValueCellFull!6505 (v!9201 V!19381)) (EmptyCell!6505) )
))
(declare-datatypes ((array!31103 0))(
  ( (array!31104 (arr!14953 (Array (_ BitVec 32) ValueCell!6505)) (size!15311 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31103)

(declare-fun mapDefault!22303 () ValueCell!6505)

