; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35746 () Bool)

(assert start!35746)

(declare-fun b_free!7921 () Bool)

(declare-fun b_next!7921 () Bool)

(assert (=> start!35746 (= b_free!7921 (not b_next!7921))))

(declare-fun tp!27854 () Bool)

(declare-fun b_and!15181 () Bool)

(assert (=> start!35746 (= tp!27854 b_and!15181)))

(declare-fun mapIsEmpty!13794 () Bool)

(declare-fun mapRes!13794 () Bool)

(assert (=> mapIsEmpty!13794 mapRes!13794))

(declare-fun b!358785 () Bool)

(declare-fun res!199488 () Bool)

(declare-fun e!219700 () Bool)

(assert (=> b!358785 (=> (not res!199488) (not e!219700))))

(declare-datatypes ((array!19907 0))(
  ( (array!19908 (arr!9444 (Array (_ BitVec 32) (_ BitVec 64))) (size!9796 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19907)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!358785 (= res!199488 (= (select (arr!9444 _keys!1456) from!1805) k!1077))))

(declare-fun b!358786 () Bool)

(declare-fun e!219697 () Bool)

(declare-fun e!219698 () Bool)

(assert (=> b!358786 (= e!219697 (and e!219698 mapRes!13794))))

(declare-fun condMapEmpty!13794 () Bool)

(declare-datatypes ((V!11899 0))(
  ( (V!11900 (val!4140 Int)) )
))
(declare-datatypes ((ValueCell!3752 0))(
  ( (ValueCellFull!3752 (v!6330 V!11899)) (EmptyCell!3752) )
))
(declare-datatypes ((array!19909 0))(
  ( (array!19910 (arr!9445 (Array (_ BitVec 32) ValueCell!3752)) (size!9797 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19909)

(declare-fun mapDefault!13794 () ValueCell!3752)

