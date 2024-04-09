; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41240 () Bool)

(assert start!41240)

(declare-fun b_free!11075 () Bool)

(declare-fun b_next!11075 () Bool)

(assert (=> start!41240 (= b_free!11075 (not b_next!11075))))

(declare-fun tp!39064 () Bool)

(declare-fun b_and!19413 () Bool)

(assert (=> start!41240 (= tp!39064 b_and!19413)))

(declare-fun mapIsEmpty!20272 () Bool)

(declare-fun mapRes!20272 () Bool)

(assert (=> mapIsEmpty!20272 mapRes!20272))

(declare-fun b!461001 () Bool)

(declare-fun res!275786 () Bool)

(declare-fun e!268903 () Bool)

(assert (=> b!461001 (=> (not res!275786) (not e!268903))))

(declare-datatypes ((array!28589 0))(
  ( (array!28590 (arr!13731 (Array (_ BitVec 32) (_ BitVec 64))) (size!14083 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28589)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28589 (_ BitVec 32)) Bool)

(assert (=> b!461001 (= res!275786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!461002 () Bool)

(declare-fun res!275780 () Bool)

(assert (=> b!461002 (=> (not res!275780) (not e!268903))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461002 (= res!275780 (validKeyInArray!0 k!794))))

(declare-fun b!461003 () Bool)

(declare-fun res!275774 () Bool)

(assert (=> b!461003 (=> (not res!275774) (not e!268903))))

(declare-datatypes ((List!8320 0))(
  ( (Nil!8317) (Cons!8316 (h!9172 (_ BitVec 64)) (t!14270 List!8320)) )
))
(declare-fun arrayNoDuplicates!0 (array!28589 (_ BitVec 32) List!8320) Bool)

(assert (=> b!461003 (= res!275774 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8317))))

(declare-fun b!461004 () Bool)

(declare-fun e!268901 () Bool)

(declare-fun e!268902 () Bool)

(assert (=> b!461004 (= e!268901 (and e!268902 mapRes!20272))))

(declare-fun condMapEmpty!20272 () Bool)

(declare-datatypes ((V!17655 0))(
  ( (V!17656 (val!6251 Int)) )
))
(declare-datatypes ((ValueCell!5863 0))(
  ( (ValueCellFull!5863 (v!8529 V!17655)) (EmptyCell!5863) )
))
(declare-datatypes ((array!28591 0))(
  ( (array!28592 (arr!13732 (Array (_ BitVec 32) ValueCell!5863)) (size!14084 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28591)

(declare-fun mapDefault!20272 () ValueCell!5863)

