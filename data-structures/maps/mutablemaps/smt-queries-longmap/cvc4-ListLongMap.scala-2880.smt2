; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41412 () Bool)

(assert start!41412)

(declare-fun b!462520 () Bool)

(declare-fun e!269964 () Bool)

(declare-fun e!269965 () Bool)

(declare-fun mapRes!20452 () Bool)

(assert (=> b!462520 (= e!269964 (and e!269965 mapRes!20452))))

(declare-fun condMapEmpty!20452 () Bool)

(declare-datatypes ((V!17799 0))(
  ( (V!17800 (val!6305 Int)) )
))
(declare-datatypes ((ValueCell!5917 0))(
  ( (ValueCellFull!5917 (v!8588 V!17799)) (EmptyCell!5917) )
))
(declare-datatypes ((array!28809 0))(
  ( (array!28810 (arr!13835 (Array (_ BitVec 32) ValueCell!5917)) (size!14187 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28809)

(declare-fun mapDefault!20452 () ValueCell!5917)

