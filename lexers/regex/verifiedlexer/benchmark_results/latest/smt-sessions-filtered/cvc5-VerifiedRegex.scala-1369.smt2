; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73138 () Bool)

(assert start!73138)

(declare-fun res!378563 () Bool)

(declare-fun e!541799 () Bool)

(assert (=> start!73138 (=> (not res!378563) (not e!541799))))

(declare-datatypes ((B!1187 0))(
  ( (B!1188 (val!2547 Int)) )
))
(declare-datatypes ((K!1912 0))(
  ( (K!1913 (val!2548 Int)) )
))
(declare-datatypes ((tuple2!10298 0))(
  ( (tuple2!10299 (_1!5975 K!1912) (_2!5975 B!1187)) )
))
(declare-datatypes ((List!8820 0))(
  ( (Nil!8804) (Cons!8804 (h!14205 tuple2!10298) (t!92932 List!8820)) )
))
(declare-datatypes ((ListMap!435 0))(
  ( (ListMap!436 (toList!563 List!8820)) )
))
(declare-fun thiss!41805 () ListMap!435)

(declare-fun size!7456 (List!8820) Int)

(assert (=> start!73138 (= res!378563 (< (size!7456 (toList!563 thiss!41805)) 2147483647))))

(assert (=> start!73138 e!541799))

(declare-fun e!541800 () Bool)

(declare-fun inv!11156 (ListMap!435) Bool)

(assert (=> start!73138 (and (inv!11156 thiss!41805) e!541800)))

(declare-fun b!820093 () Bool)

(declare-fun invariantList!193 (List!8820) Bool)

(assert (=> b!820093 (= e!541799 (not (invariantList!193 (toList!563 thiss!41805))))))

(declare-fun b!820094 () Bool)

(declare-fun tp!256505 () Bool)

(assert (=> b!820094 (= e!541800 tp!256505)))

(assert (= (and start!73138 res!378563) b!820093))

(assert (= start!73138 b!820094))

(declare-fun m!1061083 () Bool)

(assert (=> start!73138 m!1061083))

(declare-fun m!1061085 () Bool)

(assert (=> start!73138 m!1061085))

(declare-fun m!1061087 () Bool)

(assert (=> b!820093 m!1061087))

(push 1)

(assert (not start!73138))

(assert (not b!820093))

(assert (not b!820094))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258244 () Bool)

(declare-fun lt!316940 () Int)

(assert (=> d!258244 (>= lt!316940 0)))

(declare-fun e!541809 () Int)

(assert (=> d!258244 (= lt!316940 e!541809)))

(declare-fun c!132875 () Bool)

(assert (=> d!258244 (= c!132875 (is-Nil!8804 (toList!563 thiss!41805)))))

(assert (=> d!258244 (= (size!7456 (toList!563 thiss!41805)) lt!316940)))

(declare-fun b!820105 () Bool)

(assert (=> b!820105 (= e!541809 0)))

(declare-fun b!820106 () Bool)

(assert (=> b!820106 (= e!541809 (+ 1 (size!7456 (t!92932 (toList!563 thiss!41805)))))))

(assert (= (and d!258244 c!132875) b!820105))

(assert (= (and d!258244 (not c!132875)) b!820106))

(declare-fun m!1061095 () Bool)

(assert (=> b!820106 m!1061095))

(assert (=> start!73138 d!258244))

(declare-fun d!258248 () Bool)

(assert (=> d!258248 (= (inv!11156 thiss!41805) (invariantList!193 (toList!563 thiss!41805)))))

(declare-fun bs!228703 () Bool)

(assert (= bs!228703 d!258248))

(assert (=> bs!228703 m!1061087))

(assert (=> start!73138 d!258248))

(declare-fun d!258250 () Bool)

(declare-fun noDuplicatedKeys!35 (List!8820) Bool)

(assert (=> d!258250 (= (invariantList!193 (toList!563 thiss!41805)) (noDuplicatedKeys!35 (toList!563 thiss!41805)))))

(declare-fun bs!228704 () Bool)

(assert (= bs!228704 d!258250))

(declare-fun m!1061097 () Bool)

(assert (=> bs!228704 m!1061097))

(assert (=> b!820093 d!258250))

(declare-fun tp!256511 () Bool)

(declare-fun b!820115 () Bool)

(declare-fun e!541814 () Bool)

(declare-fun tp_is_empty!3753 () Bool)

(declare-fun tp_is_empty!3751 () Bool)

(assert (=> b!820115 (= e!541814 (and tp_is_empty!3751 tp_is_empty!3753 tp!256511))))

(assert (=> b!820094 (= tp!256505 e!541814)))

(assert (= (and b!820094 (is-Cons!8804 (toList!563 thiss!41805))) b!820115))

(push 1)

(assert (not d!258250))

(assert (not b!820115))

(assert (not b!820106))

(assert (not d!258248))

(assert tp_is_empty!3753)

(assert tp_is_empty!3751)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

