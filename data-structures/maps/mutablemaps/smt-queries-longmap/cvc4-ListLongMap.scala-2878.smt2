; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41400 () Bool)

(assert start!41400)

(declare-fun res!276601 () Bool)

(declare-fun e!269874 () Bool)

(assert (=> start!41400 (=> (not res!276601) (not e!269874))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41400 (= res!276601 (validMask!0 mask!1365))))

(assert (=> start!41400 e!269874))

(assert (=> start!41400 true))

(declare-datatypes ((array!28785 0))(
  ( (array!28786 (arr!13823 (Array (_ BitVec 32) (_ BitVec 64))) (size!14175 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28785)

(declare-fun array_inv!9978 (array!28785) Bool)

(assert (=> start!41400 (array_inv!9978 _keys!1025)))

(declare-datatypes ((V!17783 0))(
  ( (V!17784 (val!6299 Int)) )
))
(declare-datatypes ((ValueCell!5911 0))(
  ( (ValueCellFull!5911 (v!8582 V!17783)) (EmptyCell!5911) )
))
(declare-datatypes ((array!28787 0))(
  ( (array!28788 (arr!13824 (Array (_ BitVec 32) ValueCell!5911)) (size!14176 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28787)

(declare-fun e!269871 () Bool)

(declare-fun array_inv!9979 (array!28787) Bool)

(assert (=> start!41400 (and (array_inv!9979 _values!833) e!269871)))

(declare-fun b!462404 () Bool)

(declare-fun e!269873 () Bool)

(declare-fun mapRes!20434 () Bool)

(assert (=> b!462404 (= e!269871 (and e!269873 mapRes!20434))))

(declare-fun condMapEmpty!20434 () Bool)

(declare-fun mapDefault!20434 () ValueCell!5911)

