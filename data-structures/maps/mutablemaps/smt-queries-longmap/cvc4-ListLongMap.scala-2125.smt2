; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35978 () Bool)

(assert start!35978)

(declare-fun res!200998 () Bool)

(declare-fun e!221191 () Bool)

(assert (=> start!35978 (=> (not res!200998) (not e!221191))))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35978 (= res!200998 (validMask!0 mask!1943))))

(assert (=> start!35978 e!221191))

(assert (=> start!35978 true))

(declare-datatypes ((V!12143 0))(
  ( (V!12144 (val!4232 Int)) )
))
(declare-datatypes ((ValueCell!3844 0))(
  ( (ValueCellFull!3844 (v!6422 V!12143)) (EmptyCell!3844) )
))
(declare-datatypes ((array!20275 0))(
  ( (array!20276 (arr!9623 (Array (_ BitVec 32) ValueCell!3844)) (size!9975 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20275)

(declare-fun e!221187 () Bool)

(declare-fun array_inv!7076 (array!20275) Bool)

(assert (=> start!35978 (and (array_inv!7076 _values!1277) e!221187)))

(declare-datatypes ((array!20277 0))(
  ( (array!20278 (arr!9624 (Array (_ BitVec 32) (_ BitVec 64))) (size!9976 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20277)

(declare-fun array_inv!7077 (array!20277) Bool)

(assert (=> start!35978 (array_inv!7077 _keys!1541)))

(declare-fun b!361191 () Bool)

(declare-fun res!200999 () Bool)

(assert (=> b!361191 (=> (not res!200999) (not e!221191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20277 (_ BitVec 32)) Bool)

(assert (=> b!361191 (= res!200999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1541 mask!1943))))

(declare-fun b!361192 () Bool)

(declare-fun e!221186 () Bool)

(declare-fun mapRes!14085 () Bool)

(assert (=> b!361192 (= e!221187 (and e!221186 mapRes!14085))))

(declare-fun condMapEmpty!14085 () Bool)

(declare-fun mapDefault!14085 () ValueCell!3844)

