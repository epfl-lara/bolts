; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41312 () Bool)

(assert start!41312)

(declare-fun b!461766 () Bool)

(declare-fun e!269363 () Bool)

(declare-fun tp_is_empty!12451 () Bool)

(assert (=> b!461766 (= e!269363 tp_is_empty!12451)))

(declare-fun b!461767 () Bool)

(declare-fun e!269366 () Bool)

(assert (=> b!461767 (= e!269366 tp_is_empty!12451)))

(declare-fun b!461768 () Bool)

(declare-fun e!269365 () Bool)

(declare-datatypes ((array!28667 0))(
  ( (array!28668 (arr!13767 (Array (_ BitVec 32) (_ BitVec 64))) (size!14119 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28667)

(assert (=> b!461768 (= e!269365 (and (bvsle #b00000000000000000000000000000000 (size!14119 _keys!1025)) (bvsge (size!14119 _keys!1025) #b01111111111111111111111111111111)))))

(declare-fun b!461769 () Bool)

(declare-fun res!276266 () Bool)

(assert (=> b!461769 (=> (not res!276266) (not e!269365))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28667 (_ BitVec 32)) Bool)

(assert (=> b!461769 (= res!276266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!461770 () Bool)

(declare-fun e!269364 () Bool)

(declare-fun mapRes!20338 () Bool)

(assert (=> b!461770 (= e!269364 (and e!269366 mapRes!20338))))

(declare-fun condMapEmpty!20338 () Bool)

(declare-datatypes ((V!17707 0))(
  ( (V!17708 (val!6270 Int)) )
))
(declare-datatypes ((ValueCell!5882 0))(
  ( (ValueCellFull!5882 (v!8552 V!17707)) (EmptyCell!5882) )
))
(declare-datatypes ((array!28669 0))(
  ( (array!28670 (arr!13768 (Array (_ BitVec 32) ValueCell!5882)) (size!14120 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28669)

(declare-fun mapDefault!20338 () ValueCell!5882)

