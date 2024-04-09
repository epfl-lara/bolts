; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20080 () Bool)

(assert start!20080)

(declare-fun b!196459 () Bool)

(declare-fun e!129415 () Bool)

(assert (=> b!196459 (= e!129415 false)))

(declare-fun lt!97651 () Bool)

(declare-datatypes ((array!8422 0))(
  ( (array!8423 (arr!3961 (Array (_ BitVec 32) (_ BitVec 64))) (size!4286 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8422)

(declare-datatypes ((List!2496 0))(
  ( (Nil!2493) (Cons!2492 (h!3134 (_ BitVec 64)) (t!7435 List!2496)) )
))
(declare-fun arrayNoDuplicates!0 (array!8422 (_ BitVec 32) List!2496) Bool)

(assert (=> b!196459 (= lt!97651 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2493))))

(declare-fun res!92743 () Bool)

(assert (=> start!20080 (=> (not res!92743) (not e!129415))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20080 (= res!92743 (validMask!0 mask!1149))))

(assert (=> start!20080 e!129415))

(assert (=> start!20080 true))

(declare-datatypes ((V!5757 0))(
  ( (V!5758 (val!2336 Int)) )
))
(declare-datatypes ((ValueCell!1948 0))(
  ( (ValueCellFull!1948 (v!4302 V!5757)) (EmptyCell!1948) )
))
(declare-datatypes ((array!8424 0))(
  ( (array!8425 (arr!3962 (Array (_ BitVec 32) ValueCell!1948)) (size!4287 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8424)

(declare-fun e!129412 () Bool)

(declare-fun array_inv!2571 (array!8424) Bool)

(assert (=> start!20080 (and (array_inv!2571 _values!649) e!129412)))

(declare-fun array_inv!2572 (array!8422) Bool)

(assert (=> start!20080 (array_inv!2572 _keys!825)))

(declare-fun b!196460 () Bool)

(declare-fun res!92742 () Bool)

(assert (=> b!196460 (=> (not res!92742) (not e!129415))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196460 (= res!92742 (and (= (size!4287 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4286 _keys!825) (size!4287 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!196461 () Bool)

(declare-fun e!129411 () Bool)

(declare-fun mapRes!7943 () Bool)

(assert (=> b!196461 (= e!129412 (and e!129411 mapRes!7943))))

(declare-fun condMapEmpty!7943 () Bool)

(declare-fun mapDefault!7943 () ValueCell!1948)

