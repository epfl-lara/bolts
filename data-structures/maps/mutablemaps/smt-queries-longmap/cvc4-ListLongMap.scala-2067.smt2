; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35582 () Bool)

(assert start!35582)

(declare-fun res!197896 () Bool)

(declare-fun e!218389 () Bool)

(assert (=> start!35582 (=> (not res!197896) (not e!218389))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35582 (= res!197896 (validMask!0 mask!1842))))

(assert (=> start!35582 e!218389))

(declare-fun tp_is_empty!8027 () Bool)

(assert (=> start!35582 tp_is_empty!8027))

(assert (=> start!35582 true))

(declare-datatypes ((array!19591 0))(
  ( (array!19592 (arr!9286 (Array (_ BitVec 32) (_ BitVec 64))) (size!9638 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19591)

(declare-fun array_inv!6836 (array!19591) Bool)

(assert (=> start!35582 (array_inv!6836 _keys!1456)))

(declare-datatypes ((V!11679 0))(
  ( (V!11680 (val!4058 Int)) )
))
(declare-datatypes ((ValueCell!3670 0))(
  ( (ValueCellFull!3670 (v!6248 V!11679)) (EmptyCell!3670) )
))
(declare-datatypes ((array!19593 0))(
  ( (array!19594 (arr!9287 (Array (_ BitVec 32) ValueCell!3670)) (size!9639 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19593)

(declare-fun e!218388 () Bool)

(declare-fun array_inv!6837 (array!19593) Bool)

(assert (=> start!35582 (and (array_inv!6837 _values!1208) e!218388)))

(declare-fun b!356455 () Bool)

(declare-fun e!218387 () Bool)

(assert (=> b!356455 (= e!218387 tp_is_empty!8027)))

(declare-fun b!356456 () Bool)

(declare-fun res!197900 () Bool)

(assert (=> b!356456 (=> (not res!197900) (not e!218389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19591 (_ BitVec 32)) Bool)

(assert (=> b!356456 (= res!197900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356457 () Bool)

(declare-fun res!197899 () Bool)

(assert (=> b!356457 (=> (not res!197899) (not e!218389))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356457 (= res!197899 (validKeyInArray!0 k!1077))))

(declare-fun b!356458 () Bool)

(declare-fun e!218386 () Bool)

(assert (=> b!356458 (= e!218386 tp_is_empty!8027)))

(declare-fun mapIsEmpty!13548 () Bool)

(declare-fun mapRes!13548 () Bool)

(assert (=> mapIsEmpty!13548 mapRes!13548))

(declare-fun mapNonEmpty!13548 () Bool)

(declare-fun tp!27525 () Bool)

(assert (=> mapNonEmpty!13548 (= mapRes!13548 (and tp!27525 e!218387))))

(declare-fun mapValue!13548 () ValueCell!3670)

(declare-fun mapKey!13548 () (_ BitVec 32))

(declare-fun mapRest!13548 () (Array (_ BitVec 32) ValueCell!3670))

(assert (=> mapNonEmpty!13548 (= (arr!9287 _values!1208) (store mapRest!13548 mapKey!13548 mapValue!13548))))

(declare-fun b!356459 () Bool)

(declare-fun res!197898 () Bool)

(assert (=> b!356459 (=> (not res!197898) (not e!218389))))

(declare-fun from!1805 () (_ BitVec 32))

(assert (=> b!356459 (= res!197898 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9638 _keys!1456))))))

(declare-fun b!356460 () Bool)

(declare-fun res!197902 () Bool)

(assert (=> b!356460 (=> (not res!197902) (not e!218389))))

(declare-datatypes ((List!5394 0))(
  ( (Nil!5391) (Cons!5390 (h!6246 (_ BitVec 64)) (t!10552 List!5394)) )
))
(declare-fun arrayNoDuplicates!0 (array!19591 (_ BitVec 32) List!5394) Bool)

(assert (=> b!356460 (= res!197902 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5391))))

(declare-fun b!356461 () Bool)

(assert (=> b!356461 (= e!218388 (and e!218386 mapRes!13548))))

(declare-fun condMapEmpty!13548 () Bool)

(declare-fun mapDefault!13548 () ValueCell!3670)

