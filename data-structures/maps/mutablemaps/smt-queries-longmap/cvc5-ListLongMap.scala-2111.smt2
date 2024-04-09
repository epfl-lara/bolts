; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35842 () Bool)

(assert start!35842)

(declare-fun mapIsEmpty!13938 () Bool)

(declare-fun mapRes!13938 () Bool)

(assert (=> mapIsEmpty!13938 mapRes!13938))

(declare-fun b!359881 () Bool)

(declare-fun e!220420 () Bool)

(declare-fun tp_is_empty!8287 () Bool)

(assert (=> b!359881 (= e!220420 tp_is_empty!8287)))

(declare-fun b!359882 () Bool)

(declare-fun res!200157 () Bool)

(declare-fun e!220421 () Bool)

(assert (=> b!359882 (=> (not res!200157) (not e!220421))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(declare-datatypes ((array!20095 0))(
  ( (array!20096 (arr!9538 (Array (_ BitVec 32) (_ BitVec 64))) (size!9890 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20095)

(assert (=> b!359882 (= res!200157 (not (= (select (arr!9538 _keys!1456) from!1805) k!1077)))))

(declare-fun b!359883 () Bool)

(declare-fun res!200153 () Bool)

(assert (=> b!359883 (=> (not res!200153) (not e!220421))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!12027 0))(
  ( (V!12028 (val!4188 Int)) )
))
(declare-datatypes ((ValueCell!3800 0))(
  ( (ValueCellFull!3800 (v!6378 V!12027)) (EmptyCell!3800) )
))
(declare-datatypes ((array!20097 0))(
  ( (array!20098 (arr!9539 (Array (_ BitVec 32) ValueCell!3800)) (size!9891 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20097)

(assert (=> b!359883 (= res!200153 (and (= (size!9891 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9890 _keys!1456) (size!9891 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359884 () Bool)

(declare-fun e!220418 () Bool)

(declare-fun e!220417 () Bool)

(assert (=> b!359884 (= e!220418 (and e!220417 mapRes!13938))))

(declare-fun condMapEmpty!13938 () Bool)

(declare-fun mapDefault!13938 () ValueCell!3800)

