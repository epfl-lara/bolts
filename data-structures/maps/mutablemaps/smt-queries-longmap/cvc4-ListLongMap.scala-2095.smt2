; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35750 () Bool)

(assert start!35750)

(declare-fun b_free!7925 () Bool)

(declare-fun b_next!7925 () Bool)

(assert (=> start!35750 (= b_free!7925 (not b_next!7925))))

(declare-fun tp!27867 () Bool)

(declare-fun b_and!15185 () Bool)

(assert (=> start!35750 (= tp!27867 b_and!15185)))

(declare-fun b!358857 () Bool)

(declare-fun res!199545 () Bool)

(declare-fun e!219728 () Bool)

(assert (=> b!358857 (=> (not res!199545) (not e!219728))))

(declare-datatypes ((array!19915 0))(
  ( (array!19916 (arr!9448 (Array (_ BitVec 32) (_ BitVec 64))) (size!9800 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19915)

(declare-datatypes ((List!5475 0))(
  ( (Nil!5472) (Cons!5471 (h!6327 (_ BitVec 64)) (t!10633 List!5475)) )
))
(declare-fun arrayNoDuplicates!0 (array!19915 (_ BitVec 32) List!5475) Bool)

(assert (=> b!358857 (= res!199545 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5472))))

(declare-fun b!358858 () Bool)

(declare-fun res!199544 () Bool)

(assert (=> b!358858 (=> (not res!199544) (not e!219728))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!358858 (= res!199544 (validKeyInArray!0 k!1077))))

(declare-fun res!199541 () Bool)

(assert (=> start!35750 (=> (not res!199541) (not e!219728))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35750 (= res!199541 (validMask!0 mask!1842))))

(assert (=> start!35750 e!219728))

(declare-fun tp_is_empty!8195 () Bool)

(assert (=> start!35750 tp_is_empty!8195))

(assert (=> start!35750 true))

(assert (=> start!35750 tp!27867))

(declare-fun array_inv!6950 (array!19915) Bool)

(assert (=> start!35750 (array_inv!6950 _keys!1456)))

(declare-datatypes ((V!11903 0))(
  ( (V!11904 (val!4142 Int)) )
))
(declare-datatypes ((ValueCell!3754 0))(
  ( (ValueCellFull!3754 (v!6332 V!11903)) (EmptyCell!3754) )
))
(declare-datatypes ((array!19917 0))(
  ( (array!19918 (arr!9449 (Array (_ BitVec 32) ValueCell!3754)) (size!9801 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19917)

(declare-fun e!219727 () Bool)

(declare-fun array_inv!6951 (array!19917) Bool)

(assert (=> start!35750 (and (array_inv!6951 _values!1208) e!219727)))

(declare-fun b!358859 () Bool)

(declare-fun e!219729 () Bool)

(declare-fun mapRes!13800 () Bool)

(assert (=> b!358859 (= e!219727 (and e!219729 mapRes!13800))))

(declare-fun condMapEmpty!13800 () Bool)

(declare-fun mapDefault!13800 () ValueCell!3754)

