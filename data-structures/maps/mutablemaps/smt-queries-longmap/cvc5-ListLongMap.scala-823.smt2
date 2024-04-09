; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20046 () Bool)

(assert start!20046)

(declare-fun b!196153 () Bool)

(declare-fun res!92588 () Bool)

(declare-fun e!129160 () Bool)

(assert (=> b!196153 (=> (not res!92588) (not e!129160))))

(declare-datatypes ((array!8360 0))(
  ( (array!8361 (arr!3930 (Array (_ BitVec 32) (_ BitVec 64))) (size!4255 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8360)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8360 (_ BitVec 32)) Bool)

(assert (=> b!196153 (= res!92588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196154 () Bool)

(assert (=> b!196154 (= e!129160 false)))

(declare-fun lt!97600 () Bool)

(declare-datatypes ((List!2483 0))(
  ( (Nil!2480) (Cons!2479 (h!3121 (_ BitVec 64)) (t!7422 List!2483)) )
))
(declare-fun arrayNoDuplicates!0 (array!8360 (_ BitVec 32) List!2483) Bool)

(assert (=> b!196154 (= lt!97600 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2480))))

(declare-fun b!196155 () Bool)

(declare-fun e!129159 () Bool)

(declare-fun e!129158 () Bool)

(declare-fun mapRes!7892 () Bool)

(assert (=> b!196155 (= e!129159 (and e!129158 mapRes!7892))))

(declare-fun condMapEmpty!7892 () Bool)

(declare-datatypes ((V!5713 0))(
  ( (V!5714 (val!2319 Int)) )
))
(declare-datatypes ((ValueCell!1931 0))(
  ( (ValueCellFull!1931 (v!4285 V!5713)) (EmptyCell!1931) )
))
(declare-datatypes ((array!8362 0))(
  ( (array!8363 (arr!3931 (Array (_ BitVec 32) ValueCell!1931)) (size!4256 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8362)

(declare-fun mapDefault!7892 () ValueCell!1931)

