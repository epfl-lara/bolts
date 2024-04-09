; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36714 () Bool)

(assert start!36714)

(declare-fun b!366195 () Bool)

(declare-fun e!224224 () Bool)

(declare-fun e!224220 () Bool)

(declare-fun mapRes!14331 () Bool)

(assert (=> b!366195 (= e!224224 (and e!224220 mapRes!14331))))

(declare-fun condMapEmpty!14331 () Bool)

(declare-datatypes ((V!12459 0))(
  ( (V!12460 (val!4302 Int)) )
))
(declare-datatypes ((ValueCell!3914 0))(
  ( (ValueCellFull!3914 (v!6494 V!12459)) (EmptyCell!3914) )
))
(declare-datatypes ((array!20957 0))(
  ( (array!20958 (arr!9946 (Array (_ BitVec 32) ValueCell!3914)) (size!10298 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20957)

(declare-fun mapDefault!14331 () ValueCell!3914)

